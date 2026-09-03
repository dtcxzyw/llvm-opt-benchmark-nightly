Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cotmatrix_intrinsic?download=true
inline.NumInlined: 920
inline.NumDeleted: 436
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3igl19cotmatrix_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc127 unwind label %.loopexit.split-lp262

.noexc127:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115: ; preds = %bb.af
  %i.ga = ashr exact i64 %i.fy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i116, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 576460752303423487)
  %i.ge = select i1 %i.gc, i64 576460752303423487, i64 %i.gd ; 3 uses
  %.not.i.i.i.i117 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i117)
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #22
          to label %.noexc128 unwind label %.loopexit261 ; 6 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 3 uses
  store i32 %i.ct, ptr %i.gh, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.ct, ptr %.sroa.6.0..sroa_idx133, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store double %i.fu, ptr %.sroa.7.0..sroa_idx135, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i118 = icmp eq ptr %.sroa.0169.7, %.sroa.38.7
  br i1 %.not10.i.i.i.i.i.i118, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119.preheader

.lr.ph.i.i.i.i.i.i119.preheader:                  ; preds = %.noexc128
  %i.gi = sub i64 %.0.lcssa.i.i.i.i.i.i108.pn600, %i.fx ; 2 uses
  %i.gj = lshr i64 %i.gi, 4
  %i.gk = add nuw nsw i64 %i.gj, 1
  %xtraiter601 = and i64 %i.gk, 3                 ; 2 uses
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod602.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol

.lr.ph.i.i.i.i.i.i119.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i119.preheader, %.lr.ph.i.i.i.i.i.i119.prol
  %.012.i.i.i.i.i.i120.prol = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i119.prol ], [ %i.gg, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i121.prol = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i119.prol ], [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %prol.iter603 = phi i64 [ %prol.iter603.next, %.lr.ph.i.i.i.i.i.i119.prol ], [ 0, %.lr.ph.i.i.i.i.i.i119.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !105
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121.prol, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120.prol, i64 16 ; 3 uses
  %prol.iter603.next = add i64 %prol.iter603, 1   ; 2 uses
  %prol.iter603.cmp.not = icmp eq i64 %prol.iter603.next, %xtraiter601
  br i1 %prol.iter603.cmp.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol, !llvm.loop !100

.lr.ph.i.i.i.i.i.i119.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i119.prol, %.lr.ph.i.i.i.i.i.i119.preheader
  %.lcssa547.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gm, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.012.i.i.i.i.i.i120.unr = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gm, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.0911.i.i.i.i.i.i121.unr = phi ptr [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.i.i119.prol ]
  %i.gn = icmp ult i64 %i.gi, 48
  br i1 %i.gn, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i119:                            ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119
  %.012.i.i.i.i.i.i120 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i119 ], [ %.012.i.i.i.i.i.i120.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i121 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i119 ], [ %.0911.i.i.i.i.i.i121.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121, i64 16, i1 false), !tbaa.struct !31, !alias.scope !105
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !31, !alias.scope !105
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !31, !alias.scope !105
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 48 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !31, !alias.scope !105
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i122.3 = icmp eq ptr %i.gs, %.0.lcssa.i.i.i.i.i.i108.pn
  br i1 %.not.i.i.i.i.i.i122.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123: ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119, %.noexc128
  %.0.lcssa.i.i.i.i.i.i124 = phi ptr [ %i.gg, %.noexc128 ], [ %.lcssa547.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ], [ %i.gv, %.lr.ph.i.i.i.i.i.i119 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i124, i64 16
  %.not.i23.i.i.i125 = icmp eq ptr %.sroa.0169.7, null
  br i1 %.not.i23.i.i.i125, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.7, i64 noundef %i.fy) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126: ; preds = %bb.ah, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.ge
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, %bb.ae
  %.sroa.0169.8 = phi ptr [ %i.gg, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.0169.7, %bb.ae ] ; 3 uses
  %.sroa.18.6 = phi ptr [ %i.gw, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %i.fv, %bb.ae ] ; 3 uses
  %.sroa.38.8 = phi ptr [ %i.gx, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.38.7, %bb.ae ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.n, label %bb.o, !llvm.loop !101

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit251:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %lpad.loopexit253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp252:                            ; preds = %bb.w
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit256:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp257:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit261:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp262:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0169.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = ptrtoint ptr %.sroa.38.0.lcssa to i64
  %i.gz = ptrtoint ptr %.sroa.0169.0.lcssa to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0.lcssa, i64 noundef %i.ha) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.ai, %bb.aj
  %i.hb = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.hb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @free(ptr noundef %i.bm) #20
  ret void

bb.ak:                                            ; preds = %._crit_edge
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.al

bb.al:                                            ; preds = %.loopexit261, %.loopexit.split-lp262, %.loopexit256, %.loopexit.split-lp257, %.loopexit251, %.loopexit.split-lp252, %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.0169.3 = phi ptr [ %.sroa.0169.0.lcssa, %bb.ak ], [ %.sroa.0169.6, %.loopexit.split-lp257 ], [ %.sroa.0169.1348, %.loopexit.split-lp ], [ %.sroa.0169.5, %.loopexit.split-lp252 ], [ %.sroa.0169.1348, %.loopexit ], [ %.sroa.0169.5, %.loopexit251 ], [ %.sroa.0169.6, %.loopexit256 ], [ %.sroa.0169.7, %.loopexit261 ], [ %.sroa.0169.7, %.loopexit.split-lp262 ] ; 3 uses
  %.sroa.38.3 = phi ptr [ %.sroa.38.0.lcssa, %bb.ak ], [ %.sroa.18.4, %.loopexit.split-lp257 ], [ %.sroa.38.1350, %.loopexit.split-lp ], [ %.sroa.38.5, %.loopexit.split-lp252 ], [ %.sroa.38.1350, %.loopexit ], [ %.sroa.38.5, %.loopexit251 ], [ %.sroa.18.4, %.loopexit256 ], [ %.sroa.38.7, %.loopexit261 ], [ %.sroa.38.7, %.loopexit.split-lp262 ]
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ak ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp254, %.loopexit.split-lp252 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit253, %.loopexit251 ], [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0169.3, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hd = ptrtoint ptr %.sroa.38.3 to i64
  %i.he = ptrtoint ptr %.sroa.0169.3 to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.3, i64 noundef %i.hf) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131: ; preds = %bb.am, %bb.al, %.thread, %bb.m
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.m ], [ %i.cc, %.thread ], [ %.pn50.pn.pn, %bb.al ], [ %.pn50.pn.pn, %bb.am ]
  %i.hg = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.hg) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, %bb.l
  %.sroa.0.0 = phi ptr [ %i.bm, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ null, %bb.l ]
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ %i.ca, %bb.l ]
  call void @free(ptr noundef %.sroa.0.0) #20
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

declare void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi1ELin1ELin1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19cotmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi4ELi0ELin1ELi4EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Matrix.10", align 8  ; 12 uses
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !126    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !127  ; 5 uses
  %i.d = shl nsw i64 %i.c, 2                      ; 5 uses
  %i.e = sdiv i64 %i.c, 2
  %i.f = shl nsw i64 %i.e, 3                      ; 3 uses
  %.off.i.i.i.i = or disjoint i64 %i.d, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load <4 x i32>, ptr %i.a, align 16, !tbaa !18 ; 3 uses
  %i.h = icmp sgt i64 %i.c, 1
  br i1 %i.h, label %bb.c, label %.loopexit76.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load <4 x i32>, ptr %i.i, align 16, !tbaa !18 ; 2 uses
  %i.k = icmp samesign ugt i64 %i.c, 3
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.j, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.g, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.m = icmp sgt i64 %i.d, %i.f
  br i1 %i.m, label %bb.d, label %.loopexit76.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.q, %.lr.ph.i.i.i.i ], [ %i.g, %bb.c ]
  %i.n = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.p = load <4 x i32>, ptr %i.o, align 16, !tbaa !18
  %i.q = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.p) ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !18
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.t) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.v = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !106

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !18
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %i.x)
  br label %.loopexit76.i.i.i.i

.loopexit76.i.i.i.i:                              ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.g, %bb.b ], [ %i.y, %bb.d ], [ %i.l, %._crit_edge.i.i.i.i ]
  %i.z = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i)
  br label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit

7:                                                ; preds = %bb.a
  %8 = load i32, ptr %i.a, align 4, !tbaa !20     ; 3 uses
  %9 = icmp sgt i64 %i.c, 0
  br i1 %9, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %7
  %min.iters.check = icmp ult i64 %i.d, 9
  br i1 %min.iters.check, label %.lr.ph89.i.i.i.i.preheader561, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph89.i.i.i.i.preheader
  %10 = add nsw i64 %i.d, -4
  %n.vec = and i64 %10, -8                        ; 2 uses
  %11 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %15, %vector.body ]
  %vec.phi516 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %16, %vector.body ]
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 20
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !20
  %wide.load517 = load <4 x i32>, ptr %14, align 4, !tbaa !20
  %15 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %16 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi516, <4 x i32> %wide.load517) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %15, <4 x i32> %16)
  %18 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  br label %.lr.ph89.i.i.i.i.preheader561

.lr.ph89.i.i.i.i.preheader561:                    ; preds = %middle.block, %.lr.ph89.i.i.i.i.preheader
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %11, %middle.block ]
  %.286.i.i.i.i.ph = phi i32 [ %8, %.lr.ph89.i.i.i.i.preheader ], [ %18, %middle.block ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader561, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %21, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader561 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %20, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader561 ]
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.aa = load i32, ptr %19, align 4, !tbaa !20
  %20 = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.aa) ; 2 uses
  %21 = add nuw nsw i64 %.087.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %21, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !108

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.loopexit76.i.i.i.i, %7
  %.3.i.i.i.i = phi i32 [ %i.z, %.loopexit76.i.i.i.i ], [ %8, %7 ], [ %20, %.lr.ph89.i.i.i.i ]
  %i.ab = add nsw i32 %.3.i.i.i.i, 1              ; 2 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.ac, i64 noundef %i.ac)
  %i.ad = mul nsw i32 %i.ab, 10
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ae)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.j

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit
  %i.ag = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 7 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.aj = getelementptr i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.aj, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.ag, align 4, !tbaa !20
  %i.ak = getelementptr i8, ptr %i.ag, i64 20
  store i32 1, ptr %i.ak, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.b, align 8, !tbaa !127 ; 3 uses
  %i.am = mul i64 %i.al, 12                       ; 3 uses
  %i.an = icmp ugt i64 %i.am, 576460752303423487
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc75 unwind label %.thread

.noexc75:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.ao = mul i64 %i.al, 192
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #22
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.am
  %.pre = load i64, ptr %i.b, align 8, !tbaa !127
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.i, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.ar = phi i64 [ %.pre, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.al, %bb.i ]
  %.sroa.0169.4 = phi ptr [ %i.ap, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.i ] ; 4 uses
  %.sroa.38.4 = phi ptr [ %i.aq, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.i ] ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %indvars.iv403 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next404, %bb.l ] ; 6 uses
  %.sroa.38.0352 = phi ptr [ %.sroa.38.4, %.preheader.lr.ph ], [ %.sroa.38.8, %bb.l ]
  %.sroa.18.0351 = phi ptr [ %.sroa.0169.4, %.preheader.lr.ph ], [ %.sroa.18.6, %bb.l ]
  %.sroa.0169.0350 = phi ptr [ %.sroa.0169.4, %.preheader.lr.ph ], [ %.sroa.0169.8, %bb.l ]
  br label %bb.m

._crit_edge:                                      ; preds = %bb.l, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.0169.0.lcssa = phi ptr [ %.sroa.0169.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.0169.8, %bb.l ] ; 5 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0169.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.18.6, %bb.l ]
  %.sroa.38.0.lcssa = phi ptr [ %.sroa.38.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.38.8, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %.sroa.0169.0.lcssa, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.18.0.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dead_on_return %3)
          to label %bb.ag unwind label %bb.ai

bb.j:                                             ; preds = %bb.e, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi4ELi0ELin1ELi4EEEE8maxCoeffEv.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.k:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

.thread:                                          ; preds = %bb.h, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

bb.l:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !127
  %i.ay = icmp sgt i64 %i.ax, %indvars.iv.next404
  br i1 %i.ay, label %.preheader, label %._crit_edge, !llvm.loop !109

bb.m:                                             ; preds = %.preheader, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 6 uses
  %.sroa.38.1348 = phi ptr [ %.sroa.38.0352, %.preheader ], [ %.sroa.38.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 7 uses
  %.sroa.18.1347 = phi ptr [ %.sroa.18.0351, %.preheader ], [ %.sroa.18.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 5 uses
  %.sroa.0169.1346 = phi ptr [ %.sroa.0169.0350, %.preheader ], [ %.sroa.0169.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 8 uses
  %i.az = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load ptr, ptr %1, align 8, !tbaa !126
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.be = mul nsw i64 %i.bd, %i.bb
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %indvars.iv403 ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !20 ; 8 uses
  %i.bi = getelementptr i8, ptr %i.az, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !20
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.bd, %i.bk
  %i.bm = getelementptr [4 x i8], ptr %i.bf, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !20 ; 8 uses
  %i.bo = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.bp = load i64, ptr %i.at, align 8, !tbaa !28
  %i.bq = mul nsw i64 %i.bp, %indvars.iv          ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv403
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !30 ; 2 uses
  %.not.i.i78 = icmp eq ptr %.sroa.18.1347, %.sroa.38.1348
  br i1 %.not.i.i78, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.bh, ptr %.sroa.18.1347, align 8, !tbaa !20
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.1347, i64 4
  store i32 %i.bn, ptr %.sroa.6156.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.1347, i64 8
  store double %i.bt, ptr %.sroa.7159.0..sroa_idx, align 8, !tbaa !30
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %.sroa.38.1348 to i64
  %i.bv = ptrtoint ptr %.sroa.0169.1346 to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775792
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc80 unwind label %.loopexit.split-lp

.noexc80:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 576460752303423487)
  %i.cc = select i1 %i.ca, i64 576460752303423487, i64 %i.cb ; 3 uses
  %.not.i.i.i.i79 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i79)
  %i.cd = shl nuw nsw i64 %i.cc, 4
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #22
          to label %.noexc81 unwind label %.loopexit ; 5 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw ; 3 uses
  store i32 %i.bh, ptr %i.cf, align 8, !tbaa !20
  %.sroa.6156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.bn, ptr %.sroa.6156.0..sroa_idx157, align 4, !tbaa !20
  %.sroa.7159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store double %i.bt, ptr %.sroa.7159.0..sroa_idx160, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0169.1346, %.sroa.38.1348
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc81, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %i.ce, %.noexc81 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0169.1346, %.noexc81 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31, !alias.scope !128
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %.sroa.38.1348
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc81
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc81 ], [ %i.ch, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0169.1346, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.1346, i64 noundef %i.bw) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cc
  %.pre406.a = load ptr, ptr %4, align 8, !tbaa !27
  %.pre407.a = load i64, ptr %i.at, align 8, !tbaa !28
  %.pre412 = mul nsw i64 %.pre407.a, %indvars.iv
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.bq, %bb.n ], [ %.pre412, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cj = phi ptr [ %i.bo, %bb.n ], [ %.pre406.a, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.0169.5 = phi ptr [ %.sroa.0169.1346, %bb.n ], [ %i.ce, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.sroa.18.1347, %bb.n ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.sroa.38.5 = phi ptr [ %.sroa.38.1348, %bb.n ], [ %i.ci, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn567 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv403
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %.pre-phi
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !30 ; 2 uses
  %.not.i.i82 = icmp eq ptr %.sroa.18.3, %.sroa.38.5
  br i1 %.not.i.i82, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.bn, ptr %.sroa.18.3, align 8, !tbaa !20
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 20
  store i32 %i.bh, ptr %.sroa.6148.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  store double %i.cm, ptr %.sroa.7151.0..sroa_idx, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 32
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.co = ptrtoint ptr %.sroa.38.5 to i64
  %i.cp = ptrtoint ptr %.sroa.0169.5 to i64       ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 4 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775792
  br i1 %i.cr, label %bb.u, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc95 unwind label %.loopexit.split-lp252

.noexc95:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83: ; preds = %bb.t
  %i.cs = ashr exact i64 %i.cq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i84 = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i84, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 576460752303423487)
  %i.cw = select i1 %i.cu, i64 576460752303423487, i64 %i.cv ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #22
          to label %.noexc96 unwind label %.loopexit251 ; 6 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq ; 3 uses
  store i32 %i.bn, ptr %i.cz, align 8, !tbaa !20
  %.sroa.6148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.bh, ptr %.sroa.6148.0..sroa_idx149, align 4, !tbaa !20
  %.sroa.7151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store double %i.cm, ptr %.sroa.7151.0..sroa_idx152, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i86 = icmp eq ptr %.sroa.0169.5, %.sroa.38.5
  br i1 %.not10.i.i.i.i.i.i86, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87.preheader

.lr.ph.i.i.i.i.i.i87.preheader:                   ; preds = %.noexc96
  %i.da = sub i64 %.0.lcssa.i.i.i.i.i.i.pn567, %i.cp ; 2 uses
  %i.db = lshr i64 %i.da, 4
  %i.dc = add nuw nsw i64 %i.db, 1
  %xtraiter = and i64 %i.dc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i.i.i87.prol

.lr.ph.i.i.i.i.i.i87.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i87.prol
  %.012.i.i.i.i.i.i88.prol = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i87.prol ], [ %i.cy, %.lr.ph.i.i.i.i.i.i87.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i89.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i87.prol ], [ %.sroa.0169.5, %.lr.ph.i.i.i.i.i.i87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i87.prol ], [ 0, %.lr.ph.i.i.i.i.i.i87.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i88.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i89.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !129
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89.prol, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i.i.i87.prol, !llvm.loop !116

.lr.ph.i.i.i.i.i.i87.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i87.prol, %.lr.ph.i.i.i.i.i.i87.preheader
  %.lcssa518.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.i87.prol ]
  %.012.i.i.i.i.i.i88.unr = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.i87.prol ]
  %.0911.i.i.i.i.i.i89.unr = phi ptr [ %.sroa.0169.5, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.i87.prol ]
  %i.df = icmp ult i64 %i.da, 48
  br i1 %i.df, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87

.lr.ph.i.i.i.i.i.i87:                             ; preds = %.lr.ph.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i.i.i87
  %.012.i.i.i.i.i.i88 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i87 ], [ %.012.i.i.i.i.i.i88.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i89 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i87 ], [ %.0911.i.i.i.i.i.i89.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i88, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i89, i64 16, i1 false), !tbaa.struct !31, !alias.scope !129
  %i.dg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !31, !alias.scope !129
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa.struct !31, !alias.scope !129
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 48 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !tbaa.struct !31, !alias.scope !129
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i90.3 = icmp eq ptr %i.dk, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i90.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91: ; preds = %.lr.ph.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i.i.i87, %.noexc96
  %.0.lcssa.i.i.i.i.i.i92 = phi ptr [ %i.cy, %.noexc96 ], [ %.lcssa518.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ], [ %i.dn, %.lr.ph.i.i.i.i.i.i87 ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i92, i64 16
  %.not.i23.i.i.i93 = icmp eq ptr %.sroa.0169.5, null
  br i1 %.not.i23.i.i.i93, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.5, i64 noundef %i.cq) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94: ; preds = %bb.v, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cw
  %.pre408.a = load ptr, ptr %4, align 8, !tbaa !27
  %.pre409.a = load i64, ptr %i.at, align 8, !tbaa !28
  %.pre413.a = mul nsw i64 %.pre409.a, %indvars.iv
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94
  %.pre-phi414.a = phi i64 [ %.pre-phi, %bb.s ], [ %.pre413.a, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %i.dq = phi ptr [ %i.cj, %bb.s ], [ %.pre408.a, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %.sroa.0169.6 = phi ptr [ %.sroa.0169.5, %bb.s ], [ %i.cy, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 8 uses
  %.sroa.18.4 = phi ptr [ %i.cn, %bb.s ], [ %i.do, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 10 uses
  %.sroa.38.6 = phi ptr [ %.sroa.38.5, %bb.s ], [ %i.dp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %indvars.iv403
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.pre-phi414.a
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !30
  %i.du = fneg double %i.dt                       ; 2 uses
  %.not.i.i98 = icmp eq ptr %.sroa.18.4, %.sroa.38.6
  br i1 %.not.i.i98, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %i.bh, ptr %.sroa.18.4, align 8, !tbaa !20
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 4
  store i32 %i.bh, ptr %.sroa.6140.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 8
  store double %i.du, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !30
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dv = ptrtoint ptr %.sroa.18.4 to i64
  %i.dw = ptrtoint ptr %.sroa.0169.6 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775792
  br i1 %i.dy, label %bb.z, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc111 unwind label %.loopexit.split-lp257

.noexc111:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.y
  %i.dz = ashr exact i64 %i.dx, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 576460752303423487)
  %i.ed = select i1 %i.eb, i64 576460752303423487, i64 %i.ec ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.ee = shl nuw nsw i64 %i.ed, 4
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #22
          to label %.noexc112 unwind label %.loopexit256 ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx ; 3 uses
  store i32 %i.bh, ptr %i.eg, align 8, !tbaa !20
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.bh, ptr %.sroa.6140.0..sroa_idx141, align 4, !tbaa !20
  %.sroa.7143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store double %i.du, ptr %.sroa.7143.0..sroa_idx144, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i102 = icmp eq ptr %.sroa.0169.6, %.sroa.18.4
  br i1 %.not10.i.i.i.i.i.i102, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107, label %.lr.ph.i.i.i.i.i.i103

.lr.ph.i.i.i.i.i.i103:                            ; preds = %.noexc112, %.lr.ph.i.i.i.i.i.i103
  %.012.i.i.i.i.i.i104 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i103 ], [ %i.ef, %.noexc112 ] ; 2 uses
  %.0911.i.i.i.i.i.i105 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i103 ], [ %.sroa.0169.6, %.noexc112 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i104, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i105, i64 16, i1 false), !tbaa.struct !31, !alias.scope !130
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i105, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i104, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i106 = icmp eq ptr %i.eh, %.sroa.18.4
  br i1 %.not.i.i.i.i.i.i106, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107, label %.lr.ph.i.i.i.i.i.i103, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107: ; preds = %.lr.ph.i.i.i.i.i.i103, %.noexc112
  %.0.lcssa.i.i.i.i.i.i108 = phi ptr [ %i.ef, %.noexc112 ], [ %i.ei, %.lr.ph.i.i.i.i.i.i103 ]
  %.not.i23.i.i.i109 = icmp eq ptr %.sroa.0169.6, null
  br i1 %.not.i23.i.i.i109, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.6, i64 noundef %i.dx) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110: ; preds = %bb.aa, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.ed
  %.pre410 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre411 = load i64, ptr %i.at, align 8, !tbaa !28
  %.pre415 = mul nsw i64 %.pre411, %indvars.iv
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110
  %.pre-phi416 = phi i64 [ %.pre-phi414.a, %bb.x ], [ %.pre415, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ]
  %i.ek = phi ptr [ %i.dq, %bb.x ], [ %.pre410, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ]
  %.sroa.0169.7 = phi ptr [ %.sroa.0169.6, %bb.x ], [ %i.ef, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i108.pn = phi ptr [ %.sroa.18.4, %bb.x ], [ %.0.lcssa.i.i.i.i.i.i108, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 6 uses
  %.sroa.38.7 = phi ptr [ %.sroa.38.6, %bb.x ], [ %i.ej, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i108.pn568 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i108.pn to i64
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 16 ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv403
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %.pre-phi416
  %i.en = load double, ptr %i.em, align 8, !tbaa !30
  %i.eo = fneg double %i.en                       ; 2 uses
  %.not.i.i114 = icmp eq ptr %.sroa.18.5, %.sroa.38.7
  br i1 %.not.i.i114, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.bn, ptr %.sroa.18.5, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 20
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 24
  store double %i.eo, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

bb.ad:                                            ; preds = %bb.ab
  %i.eq = ptrtoint ptr %.sroa.38.7 to i64
  %i.er = ptrtoint ptr %.sroa.0169.7 to i64       ; 2 uses
  %i.es = sub i64 %i.eq, %i.er                    ; 4 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775792
  br i1 %i.et, label %bb.ae, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc127 unwind label %.loopexit.split-lp262

.noexc127:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115: ; preds = %bb.ad
  %i.eu = ashr exact i64 %i.es, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i116, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 576460752303423487)
  %i.ey = select i1 %i.ew, i64 576460752303423487, i64 %i.ex ; 3 uses
  %.not.i.i.i.i117 = icmp ne i64 %i.ey, 0
  call void @llvm.assume(i1 %.not.i.i.i.i117)
  %i.ez = shl nuw nsw i64 %i.ey, 4
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #22
          to label %.noexc128 unwind label %.loopexit261 ; 6 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.es ; 3 uses
  store i32 %i.bn, ptr %i.fb, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 %i.bn, ptr %.sroa.6.0..sroa_idx133, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store double %i.eo, ptr %.sroa.7.0..sroa_idx135, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i118 = icmp eq ptr %.sroa.0169.7, %.sroa.38.7
  br i1 %.not10.i.i.i.i.i.i118, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119.preheader

.lr.ph.i.i.i.i.i.i119.preheader:                  ; preds = %.noexc128
  %i.fc = sub i64 %.0.lcssa.i.i.i.i.i.i108.pn568, %i.er ; 2 uses
  %i.fd = lshr i64 %i.fc, 4
  %i.fe = add nuw nsw i64 %i.fd, 1
  %xtraiter569 = and i64 %i.fe, 3                 ; 2 uses
  %lcmp.mod570.not = icmp eq i64 %xtraiter569, 0
  br i1 %lcmp.mod570.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol

.lr.ph.i.i.i.i.i.i119.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i119.preheader, %.lr.ph.i.i.i.i.i.i119.prol
  %.012.i.i.i.i.i.i120.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i119.prol ], [ %i.fa, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i121.prol = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i119.prol ], [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %prol.iter571 = phi i64 [ %prol.iter571.next, %.lr.ph.i.i.i.i.i.i119.prol ], [ 0, %.lr.ph.i.i.i.i.i.i119.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !131
  %i.ff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121.prol, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120.prol, i64 16 ; 3 uses
  %prol.iter571.next = add i64 %prol.iter571, 1   ; 2 uses
  %prol.iter571.cmp.not = icmp eq i64 %prol.iter571.next, %xtraiter569
  br i1 %prol.iter571.cmp.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol, !llvm.loop !123

.lr.ph.i.i.i.i.i.i119.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i119.prol, %.lr.ph.i.i.i.i.i.i119.preheader
  %.lcssa520.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.fg, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.012.i.i.i.i.i.i120.unr = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.fg, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.0911.i.i.i.i.i.i121.unr = phi ptr [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.ff, %.lr.ph.i.i.i.i.i.i119.prol ]
  %i.fh = icmp ult i64 %i.fc, 48
  br i1 %i.fh, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i119:                            ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119
  %.012.i.i.i.i.i.i120 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i119 ], [ %.012.i.i.i.i.i.i120.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i121 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i119 ], [ %.0911.i.i.i.i.i.i121.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121, i64 16, i1 false), !tbaa.struct !31, !alias.scope !131
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fi, i64 16, i1 false), !tbaa.struct !31, !alias.scope !131
  %i.fk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 16, i1 false), !tbaa.struct !31, !alias.scope !131
  %i.fm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 48 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !tbaa.struct !31, !alias.scope !131
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i122.3 = icmp eq ptr %i.fm, %.0.lcssa.i.i.i.i.i.i108.pn
  br i1 %.not.i.i.i.i.i.i122.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123: ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119, %.noexc128
  %.0.lcssa.i.i.i.i.i.i124 = phi ptr [ %i.fa, %.noexc128 ], [ %.lcssa520.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ], [ %i.fp, %.lr.ph.i.i.i.i.i.i119 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i124, i64 16
  %.not.i23.i.i.i125 = icmp eq ptr %.sroa.0169.7, null
  br i1 %.not.i23.i.i.i125, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.7, i64 noundef %i.es) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126: ; preds = %bb.af, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.ey
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, %bb.ac
  %.sroa.0169.8 = phi ptr [ %i.fa, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.0169.7, %bb.ac ] ; 3 uses
  %.sroa.18.6 = phi ptr [ %i.fq, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %i.ep, %bb.ac ] ; 3 uses
  %.sroa.38.8 = phi ptr [ %i.fr, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.38.7, %bb.ac ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.l, label %bb.m, !llvm.loop !124

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit251:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %lpad.loopexit253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp252:                            ; preds = %bb.u
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit256:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp257:                            ; preds = %bb.z
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit261:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp262:                            ; preds = %bb.ae
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0169.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fs = ptrtoint ptr %.sroa.38.0.lcssa to i64
  %i.ft = ptrtoint ptr %.sroa.0169.0.lcssa to i64
  %i.fu = sub i64 %i.fs, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0.lcssa, i64 noundef %i.fu) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.ag, %bb.ah
  %i.fv = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.fv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @free(ptr noundef %i.ag) #20
  ret void

bb.ai:                                            ; preds = %._crit_edge
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit261, %.loopexit.split-lp262, %.loopexit256, %.loopexit.split-lp257, %.loopexit251, %.loopexit.split-lp252, %.loopexit, %.loopexit.split-lp, %bb.ai
  %.sroa.0169.3 = phi ptr [ %.sroa.0169.0.lcssa, %bb.ai ], [ %.sroa.0169.6, %.loopexit.split-lp257 ], [ %.sroa.0169.1346, %.loopexit.split-lp ], [ %.sroa.0169.5, %.loopexit.split-lp252 ], [ %.sroa.0169.1346, %.loopexit ], [ %.sroa.0169.5, %.loopexit251 ], [ %.sroa.0169.6, %.loopexit256 ], [ %.sroa.0169.7, %.loopexit261 ], [ %.sroa.0169.7, %.loopexit.split-lp262 ] ; 3 uses
  %.sroa.38.3 = phi ptr [ %.sroa.38.0.lcssa, %bb.ai ], [ %.sroa.18.4, %.loopexit.split-lp257 ], [ %.sroa.38.1348, %.loopexit.split-lp ], [ %.sroa.38.5, %.loopexit.split-lp252 ], [ %.sroa.38.1348, %.loopexit ], [ %.sroa.38.5, %.loopexit251 ], [ %.sroa.18.4, %.loopexit256 ], [ %.sroa.38.7, %.loopexit261 ], [ %.sroa.38.7, %.loopexit.split-lp262 ]
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.ai ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp254, %.loopexit.split-lp252 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit253, %.loopexit251 ], [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0169.3, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fx = ptrtoint ptr %.sroa.38.3 to i64
  %i.fy = ptrtoint ptr %.sroa.0169.3 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.3, i64 noundef %i.fz) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131: ; preds = %bb.ak, %bb.aj, %.thread, %bb.k
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %.thread ], [ %.pn50.pn.pn, %bb.aj ], [ %.pn50.pn.pn, %bb.ak ]
  %i.ga = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.ga) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, %bb.j
  %.sroa.0.0 = phi ptr [ %i.ag, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ null, %bb.j ]
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ %i.au, %bb.j ]
  call void @free(ptr noundef %.sroa.0.0) #20
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19cotmatrix_intrinsicIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi3ELi0ELin1ELi3EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Matrix.10", align 8  ; 12 uses
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !154    ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !155  ; 4 uses
  %i.d = mul nsw i64 %i.c, 3                      ; 9 uses
  %i.e = sdiv i64 %i.d, 8
  %i.f = shl nsw i64 %i.e, 3                      ; 3 uses
  %i.g = sdiv i64 %i.d, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.d, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load <4 x i32>, ptr %i.a, align 16, !tbaa !18 ; 3 uses
  %i.j = icmp sgt i64 %i.c, 2
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load <4 x i32>, ptr %i.k, align 16, !tbaa !18 ; 2 uses
  %i.m = icmp samesign ugt i64 %i.c, 5
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.l, %bb.c ], [ %i.w, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.i, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.o = icmp sgt i64 %i.h, %i.f
  br i1 %i.o, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.s, %.lr.ph.i.i.i.i ], [ %i.i, %bb.c ]
  %i.p = phi <4 x i32> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.r = load <4 x i32>, ptr %i.q, align 16, !tbaa !18
  %i.s = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !18
  %i.w = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.v) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.x = icmp slt i64 %.057.i.i.i.i, %i.f
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !132

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %i.z = load <4 x i32>, ptr %i.y, align 16, !tbaa !18
  %i.aa = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.i, %bb.b ], [ %i.aa, %bb.d ], [ %i.n, %._crit_edge.i.i.i.i ]
  %i.ab = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ac = icmp slt i64 %i.h, %i.d
  br i1 %i.ac, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ad = sub i64 %i.d, %i.h                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader593, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  %i.ae = add i64 %i.h, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.af = getelementptr [4 x i8], ptr %i.a, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi526 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !20
  %wide.load527 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !20
  %i.ai = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi526, <4 x i32> %wide.load527) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ai, <4 x i32> %i.aj)
  %i.al = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader593

.lr.ph84.i.i.i.i.preheader593:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.h, %.lr.ph84.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ab, %.lr.ph84.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader593, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ap, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader593 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.ao, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader593 ]
  %i.am = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !20
  %i.ao = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.an) ; 2 uses
  %i.ap = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ap, %i.d
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !134

bb.f:                                             ; preds = %bb.a
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !20  ; 3 uses
  %i.ar = icmp sgt i64 %i.c, 0
  br i1 %i.ar, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.as = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check529 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check529, label %.lr.ph89.i.i.i.i.preheader589, label %vector.ph530

vector.ph530:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec531 = and i64 %i.as, -8                   ; 3 uses
  %i.at = or disjoint i64 %n.vec531, 1
  %broadcast.splatinsert532 = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat533 = shufflevector <4 x i32> %broadcast.splatinsert532, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph530
  %index535 = phi i64 [ 0, %vector.ph530 ], [ %index.next540, %vector.body534 ] ; 2 uses
  %vec.phi536 = phi <4 x i32> [ %broadcast.splat533, %vector.ph530 ], [ %i.ax, %vector.body534 ]
  %vec.phi537 = phi <4 x i32> [ %broadcast.splat533, %vector.ph530 ], [ %i.ay, %vector.body534 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index535 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %wide.load538 = load <4 x i32>, ptr %i.av, align 4, !tbaa !20
  %wide.load539 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !20
  %i.ax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi536, <4 x i32> %wide.load538) ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi537, <4 x i32> %wide.load539) ; 2 uses
  %index.next540 = add nuw i64 %index535, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next540, %n.vec531
  br i1 %i.az, label %middle.block541, label %vector.body534, !llvm.loop !135

middle.block541:                                  ; preds = %vector.body534
  %rdx.minmax542 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ax, <4 x i32> %i.ay)
  %i.ba = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax542) ; 2 uses
  %cmp.n543 = icmp eq i64 %i.as, %n.vec531
  br i1 %cmp.n543, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader589

.lr.ph89.i.i.i.i.preheader589:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block541
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.at, %middle.block541 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.aq, %.lr.ph89.i.i.i.i.preheader ], [ %i.ba, %middle.block541 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader589, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.be, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader589 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bd, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader589 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20
  %i.bd = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.bc) ; 2 uses
  %i.be = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.be, %i.d
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !136

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block541, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bd, %.lr.ph89.i.i.i.i ], [ %i.aq, %bb.f ], [ %i.ab, %bb.e ], [ %i.ba, %middle.block541 ], [ %i.al, %middle.block ], [ %i.ao, %.lr.ph84.i.i.i.i ]
  %i.bf = add nsw i32 %.3.i.i.i.i, 1              ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.bg, i64 noundef %i.bg)
  %i.bh = mul nsw i32 %i.bf, 10
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef %i.bi)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.l

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.bk = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 7 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.bm = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bm, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  store i32 0, ptr %i.bn, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.bk, align 4, !tbaa !20
  %i.bo = getelementptr i8, ptr %i.bk, i64 20
  store i32 1, ptr %i.bo, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !155 ; 3 uses
  %i.bq = mul i64 %i.bp, 12                       ; 3 uses
  %i.br = icmp ugt i64 %i.bq, 576460752303423487
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc75 unwind label %.thread

.noexc75:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.bs = mul i64 %i.bp, 192
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #22
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bq
  %.pre = load i64, ptr %i.b, align 8, !tbaa !155
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.bv = phi i64 [ %.pre, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.bp, %bb.k ]
  %.sroa.0169.4 = phi ptr [ %i.bt, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.k ] ; 4 uses
  %.sroa.38.4 = phi ptr [ %i.bu, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.k ] ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %indvars.iv407 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next408, %bb.n ] ; 6 uses
  %.sroa.38.0354 = phi ptr [ %.sroa.38.4, %.preheader.lr.ph ], [ %.sroa.38.8, %bb.n ]
  %.sroa.18.0353 = phi ptr [ %.sroa.0169.4, %.preheader.lr.ph ], [ %.sroa.18.6, %bb.n ]
  %.sroa.0169.0352 = phi ptr [ %.sroa.0169.4, %.preheader.lr.ph ], [ %.sroa.0169.8, %bb.n ]
  br label %bb.o

._crit_edge:                                      ; preds = %bb.n, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.0169.0.lcssa = phi ptr [ %.sroa.0169.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.0169.8, %bb.n ] ; 5 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0169.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.18.6, %bb.n ]
  %.sroa.38.0.lcssa = phi ptr [ %.sroa.38.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.38.8, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %.sroa.0169.0.lcssa, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.18.0.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dead_on_return %3)
          to label %bb.ai unwind label %bb.ak

bb.l:                                             ; preds = %bb.g, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE8maxCoeffEv.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.m:                                             ; preds = %bb.h
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

.thread:                                          ; preds = %bb.j, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

bb.n:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !155
  %i.cc = icmp sgt i64 %i.cb, %indvars.iv.next408
  br i1 %i.cc, label %.preheader, label %._crit_edge, !llvm.loop !137

bb.o:                                             ; preds = %.preheader, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 6 uses
  %.sroa.38.1350 = phi ptr [ %.sroa.38.0354, %.preheader ], [ %.sroa.38.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 7 uses
  %.sroa.18.1349 = phi ptr [ %.sroa.18.0353, %.preheader ], [ %.sroa.18.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 5 uses
  %.sroa.0169.1348 = phi ptr [ %.sroa.0169.0352, %.preheader ], [ %.sroa.0169.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 8 uses
  %i.cd = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !20
  %i.cf = sext i32 %i.ce to i64
  %i.cg = load ptr, ptr %1, align 8, !tbaa !154
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.ci = mul nsw i64 %i.ch, %i.cf
  %i.cj = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv407 ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !20 ; 8 uses
  %i.cm = getelementptr i8, ptr %i.cd, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %i.ch, %i.co
  %i.cq = getelementptr [4 x i8], ptr %i.cj, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !20 ; 8 uses
  %i.cs = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.ct = load i64, ptr %i.bx, align 8, !tbaa !28
  %i.cu = mul nsw i64 %i.ct, %indvars.iv          ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv407
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30 ; 2 uses
  %.not.i.i78 = icmp eq ptr %.sroa.18.1349, %.sroa.38.1350
  br i1 %.not.i.i78, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cl, ptr %.sroa.18.1349, align 8, !tbaa !20
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.1349, i64 4
  store i32 %i.cr, ptr %.sroa.6156.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.1349, i64 8
  store double %i.cx, ptr %.sroa.7159.0..sroa_idx, align 8, !tbaa !30
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cy = ptrtoint ptr %.sroa.38.1350 to i64
  %i.cz = ptrtoint ptr %.sroa.0169.1348 to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 4 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775792
  br i1 %i.db, label %bb.r, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc80 unwind label %.loopexit.split-lp

.noexc80:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.dc = ashr exact i64 %i.da, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 576460752303423487)
  %i.dg = select i1 %i.de, i64 576460752303423487, i64 %i.df ; 3 uses
  %.not.i.i.i.i79 = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i79)
  %i.dh = shl nuw nsw i64 %i.dg, 4
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #22
          to label %.noexc81 unwind label %.loopexit ; 5 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da ; 3 uses
  store i32 %i.cl, ptr %i.dj, align 8, !tbaa !20
  %.sroa.6156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %i.cr, ptr %.sroa.6156.0..sroa_idx157, align 4, !tbaa !20
  %.sroa.7159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store double %i.cx, ptr %.sroa.7159.0..sroa_idx160, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0169.1348, %.sroa.38.1350
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc81, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i ], [ %i.di, %.noexc81 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0169.1348, %.noexc81 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31, !alias.scope !156
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, %.sroa.38.1350
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc81
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.di, %.noexc81 ], [ %i.dl, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0169.1348, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.1348, i64 noundef %i.da) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dg
  %.pre410 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre411 = load i64, ptr %i.bx, align 8, !tbaa !28
  %.pre416 = mul nsw i64 %.pre411, %indvars.iv
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.cu, %bb.p ], [ %.pre416, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.dn = phi ptr [ %i.cs, %bb.p ], [ %.pre410, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.0169.5 = phi ptr [ %.sroa.0169.1348, %bb.p ], [ %i.di, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.sroa.18.1349, %bb.p ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.sroa.38.5 = phi ptr [ %.sroa.38.1350, %bb.p ], [ %i.dm, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn600 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %indvars.iv407
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %.pre-phi
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !30 ; 2 uses
  %.not.i.i82 = icmp eq ptr %.sroa.18.3, %.sroa.38.5
  br i1 %.not.i.i82, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.cr, ptr %.sroa.18.3, align 8, !tbaa !20
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 20
  store i32 %i.cl, ptr %.sroa.6148.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  store double %i.dq, ptr %.sroa.7151.0..sroa_idx, align 8, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 32
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.ds = ptrtoint ptr %.sroa.38.5 to i64
  %i.dt = ptrtoint ptr %.sroa.0169.5 to i64       ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775792
  br i1 %i.dv, label %bb.w, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc95 unwind label %.loopexit.split-lp252

.noexc95:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83: ; preds = %bb.v
  %i.dw = ashr exact i64 %i.du, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i84 = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i84, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 576460752303423487)
  %i.ea = select i1 %i.dy, i64 576460752303423487, i64 %i.dz ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.eb = shl nuw nsw i64 %i.ea, 4
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #22
          to label %.noexc96 unwind label %.loopexit251 ; 6 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.du ; 3 uses
  store i32 %i.cr, ptr %i.ed, align 8, !tbaa !20
  %.sroa.6148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 %i.cl, ptr %.sroa.6148.0..sroa_idx149, align 4, !tbaa !20
  %.sroa.7151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store double %i.dq, ptr %.sroa.7151.0..sroa_idx152, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i86 = icmp eq ptr %.sroa.0169.5, %.sroa.38.5
  br i1 %.not10.i.i.i.i.i.i86, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87.preheader

.lr.ph.i.i.i.i.i.i87.preheader:                   ; preds = %.noexc96
  %i.ee = sub i64 %.0.lcssa.i.i.i.i.i.i.pn600, %i.dt ; 2 uses
  %i.ef = lshr i64 %i.ee, 4
  %i.eg = add nuw nsw i64 %i.ef, 1
  %xtraiter = and i64 %i.eg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i.i.i87.prol

.lr.ph.i.i.i.i.i.i87.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i87.prol
  %.012.i.i.i.i.i.i88.prol = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i87.prol ], [ %i.ec, %.lr.ph.i.i.i.i.i.i87.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i89.prol = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i87.prol ], [ %.sroa.0169.5, %.lr.ph.i.i.i.i.i.i87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i87.prol ], [ 0, %.lr.ph.i.i.i.i.i.i87.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i88.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i89.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !157
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89.prol, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i.i.i87.prol, !llvm.loop !144

.lr.ph.i.i.i.i.i.i87.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i87.prol, %.lr.ph.i.i.i.i.i.i87.preheader
  %.lcssa546.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i87.prol ]
  %.012.i.i.i.i.i.i88.unr = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.i87.prol ]
  %.0911.i.i.i.i.i.i89.unr = phi ptr [ %.sroa.0169.5, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i87.prol ]
  %i.ej = icmp ult i64 %i.ee, 48
  br i1 %i.ej, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87

.lr.ph.i.i.i.i.i.i87:                             ; preds = %.lr.ph.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i.i.i87
  %.012.i.i.i.i.i.i88 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i87 ], [ %.012.i.i.i.i.i.i88.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i89 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i87 ], [ %.0911.i.i.i.i.i.i89.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i88, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i89, i64 16, i1 false), !tbaa.struct !31, !alias.scope !157
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 16, i1 false), !tbaa.struct !31, !alias.scope !157
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !31, !alias.scope !157
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 48 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !31, !alias.scope !157
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i90.3 = icmp eq ptr %i.eo, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i90.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91: ; preds = %.lr.ph.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i.i.i87, %.noexc96
  %.0.lcssa.i.i.i.i.i.i92 = phi ptr [ %i.ec, %.noexc96 ], [ %.lcssa546.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ], [ %i.er, %.lr.ph.i.i.i.i.i.i87 ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i92, i64 16
  %.not.i23.i.i.i93 = icmp eq ptr %.sroa.0169.5, null
  br i1 %.not.i23.i.i.i93, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.5, i64 noundef %i.du) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94: ; preds = %bb.x, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %i.ea
  %.pre412 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre413 = load i64, ptr %i.bx, align 8, !tbaa !28
  %.pre417 = mul nsw i64 %.pre413, %indvars.iv
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94
  %.pre-phi418 = phi i64 [ %.pre-phi, %bb.u ], [ %.pre417, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %i.eu = phi ptr [ %i.dn, %bb.u ], [ %.pre412, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %.sroa.0169.6 = phi ptr [ %.sroa.0169.5, %bb.u ], [ %i.ec, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 8 uses
  %.sroa.18.4 = phi ptr [ %i.dr, %bb.u ], [ %i.es, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 10 uses
  %.sroa.38.6 = phi ptr [ %.sroa.38.5, %bb.u ], [ %i.et, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %indvars.iv407
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %.pre-phi418
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !30
  %i.ey = fneg double %i.ex                       ; 2 uses
  %.not.i.i98 = icmp eq ptr %.sroa.18.4, %.sroa.38.6
  br i1 %.not.i.i98, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.cl, ptr %.sroa.18.4, align 8, !tbaa !20
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 4
  store i32 %i.cl, ptr %.sroa.6140.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 8
  store double %i.ey, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !30
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ez = ptrtoint ptr %.sroa.18.4 to i64
  %i.fa = ptrtoint ptr %.sroa.0169.6 to i64
  %i.fb = sub i64 %i.ez, %i.fa                    ; 4 uses
  %i.fc = icmp eq i64 %i.fb, 9223372036854775792
  br i1 %i.fc, label %bb.ab, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc111 unwind label %.loopexit.split-lp257

.noexc111:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.aa
  %i.fd = ashr exact i64 %i.fb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %i.fe = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.fd ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.fd
  %i.fg = call i64 @llvm.umin.i64(i64 %i.fe, i64 576460752303423487)
  %i.fh = select i1 %i.ff, i64 576460752303423487, i64 %i.fg ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.fi = shl nuw nsw i64 %i.fh, 4
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #22
          to label %.noexc112 unwind label %.loopexit256 ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fb ; 3 uses
  store i32 %i.cl, ptr %i.fk, align 8, !tbaa !20
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.cl, ptr %.sroa.6140.0..sroa_idx141, align 4, !tbaa !20
  %.sroa.7143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store double %i.ey, ptr %.sroa.7143.0..sroa_idx144, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i102 = icmp eq ptr %.sroa.0169.6, %.sroa.18.4
  br i1 %.not10.i.i.i.i.i.i102, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107, label %.lr.ph.i.i.i.i.i.i103

.lr.ph.i.i.i.i.i.i103:                            ; preds = %.noexc112, %.lr.ph.i.i.i.i.i.i103
  %.012.i.i.i.i.i.i104 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i103 ], [ %i.fj, %.noexc112 ] ; 2 uses
  %.0911.i.i.i.i.i.i105 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i103 ], [ %.sroa.0169.6, %.noexc112 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i104, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i105, i64 16, i1 false), !tbaa.struct !31, !alias.scope !158
  %i.fl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i105, i64 16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i104, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i106 = icmp eq ptr %i.fl, %.sroa.18.4
  br i1 %.not.i.i.i.i.i.i106, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107, label %.lr.ph.i.i.i.i.i.i103, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107: ; preds = %.lr.ph.i.i.i.i.i.i103, %.noexc112
  %.0.lcssa.i.i.i.i.i.i108 = phi ptr [ %i.fj, %.noexc112 ], [ %i.fm, %.lr.ph.i.i.i.i.i.i103 ]
  %.not.i23.i.i.i109 = icmp eq ptr %.sroa.0169.6, null
  br i1 %.not.i23.i.i.i109, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.6, i64 noundef %i.fb) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110: ; preds = %bb.ac, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fh
  %.pre414 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre415 = load i64, ptr %i.bx, align 8, !tbaa !28
  %.pre419 = mul nsw i64 %.pre415, %indvars.iv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110
  %.pre-phi420 = phi i64 [ %.pre-phi418, %bb.z ], [ %.pre419, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ]
  %i.fo = phi ptr [ %i.eu, %bb.z ], [ %.pre414, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ]
  %.sroa.0169.7 = phi ptr [ %.sroa.0169.6, %bb.z ], [ %i.fj, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i108.pn = phi ptr [ %.sroa.18.4, %bb.z ], [ %.0.lcssa.i.i.i.i.i.i108, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 6 uses
  %.sroa.38.7 = phi ptr [ %.sroa.38.6, %bb.z ], [ %i.fn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i108.pn601 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i108.pn to i64
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 16 ; 2 uses
  %i.fp = getelementptr [8 x i8], ptr %i.fo, i64 %indvars.iv407
  %i.fq = getelementptr [8 x i8], ptr %i.fp, i64 %.pre-phi420
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !30
  %i.fs = fneg double %i.fr                       ; 2 uses
  %.not.i.i114 = icmp eq ptr %.sroa.18.5, %.sroa.38.7
  br i1 %.not.i.i114, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.cr, ptr %.sroa.18.5, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 20
  store i32 %i.cr, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 24
  store double %i.fs, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

bb.af:                                            ; preds = %bb.ad
  %i.fu = ptrtoint ptr %.sroa.38.7 to i64
  %i.fv = ptrtoint ptr %.sroa.0169.7 to i64       ; 2 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 4 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775792
  br i1 %i.fx, label %bb.ag, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc127 unwind label %.loopexit.split-lp262

.noexc127:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115: ; preds = %bb.af
  %i.fy = ashr exact i64 %i.fw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i.i116, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 576460752303423487)
  %i.gc = select i1 %i.ga, i64 576460752303423487, i64 %i.gb ; 3 uses
  %.not.i.i.i.i117 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i117)
  %i.gd = shl nuw nsw i64 %i.gc, 4
  %i.ge = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #22
          to label %.noexc128 unwind label %.loopexit261 ; 6 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw ; 3 uses
  store i32 %i.cr, ptr %i.gf, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 %i.cr, ptr %.sroa.6.0..sroa_idx133, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store double %i.fs, ptr %.sroa.7.0..sroa_idx135, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i118 = icmp eq ptr %.sroa.0169.7, %.sroa.38.7
  br i1 %.not10.i.i.i.i.i.i118, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119.preheader

.lr.ph.i.i.i.i.i.i119.preheader:                  ; preds = %.noexc128
  %i.gg = sub i64 %.0.lcssa.i.i.i.i.i.i108.pn601, %i.fv ; 2 uses
  %i.gh = lshr i64 %i.gg, 4
  %i.gi = add nuw nsw i64 %i.gh, 1
  %xtraiter602 = and i64 %i.gi, 3                 ; 2 uses
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  br i1 %lcmp.mod603.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol

.lr.ph.i.i.i.i.i.i119.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i119.preheader, %.lr.ph.i.i.i.i.i.i119.prol
  %.012.i.i.i.i.i.i120.prol = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i119.prol ], [ %i.ge, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i121.prol = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i119.prol ], [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %prol.iter604 = phi i64 [ %prol.iter604.next, %.lr.ph.i.i.i.i.i.i119.prol ], [ 0, %.lr.ph.i.i.i.i.i.i119.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !159
  %i.gj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121.prol, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120.prol, i64 16 ; 3 uses
  %prol.iter604.next = add i64 %prol.iter604, 1   ; 2 uses
  %prol.iter604.cmp.not = icmp eq i64 %prol.iter604.next, %xtraiter602
  br i1 %prol.iter604.cmp.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol, !llvm.loop !151

.lr.ph.i.i.i.i.i.i119.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i119.prol, %.lr.ph.i.i.i.i.i.i119.preheader
  %.lcssa548.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gk, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.012.i.i.i.i.i.i120.unr = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gk, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.0911.i.i.i.i.i.i121.unr = phi ptr [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gj, %.lr.ph.i.i.i.i.i.i119.prol ]
  %i.gl = icmp ult i64 %i.gg, 48
  br i1 %i.gl, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i119:                            ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119
  %.012.i.i.i.i.i.i120 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i119 ], [ %.012.i.i.i.i.i.i120.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i121 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i119 ], [ %.0911.i.i.i.i.i.i121.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121, i64 16, i1 false), !tbaa.struct !31, !alias.scope !159
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false), !tbaa.struct !31, !alias.scope !159
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !31, !alias.scope !159
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 48 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !31, !alias.scope !159
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i122.3 = icmp eq ptr %i.gq, %.0.lcssa.i.i.i.i.i.i108.pn
  br i1 %.not.i.i.i.i.i.i122.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123: ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119, %.noexc128
  %.0.lcssa.i.i.i.i.i.i124 = phi ptr [ %i.ge, %.noexc128 ], [ %.lcssa548.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ], [ %i.gt, %.lr.ph.i.i.i.i.i.i119 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i124, i64 16
  %.not.i23.i.i.i125 = icmp eq ptr %.sroa.0169.7, null
  br i1 %.not.i23.i.i.i125, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.7, i64 noundef %i.fw) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126: ; preds = %bb.ah, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gc
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, %bb.ae
  %.sroa.0169.8 = phi ptr [ %i.ge, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.0169.7, %bb.ae ] ; 3 uses
  %.sroa.18.6 = phi ptr [ %i.gu, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %i.ft, %bb.ae ] ; 3 uses
  %.sroa.38.8 = phi ptr [ %i.gv, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.38.7, %bb.ae ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.n, label %bb.o, !llvm.loop !152

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit251:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %lpad.loopexit253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp252:                            ; preds = %bb.w
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit256:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp257:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit261:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp262:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0169.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gw = ptrtoint ptr %.sroa.38.0.lcssa to i64
  %i.gx = ptrtoint ptr %.sroa.0169.0.lcssa to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0.lcssa, i64 noundef %i.gy) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.ai, %bb.aj
  %i.gz = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.gz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @free(ptr noundef %i.bk) #20
  ret void

bb.ak:                                            ; preds = %._crit_edge
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.al

bb.al:                                            ; preds = %.loopexit261, %.loopexit.split-lp262, %.loopexit256, %.loopexit.split-lp257, %.loopexit251, %.loopexit.split-lp252, %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.0169.3 = phi ptr [ %.sroa.0169.0.lcssa, %bb.ak ], [ %.sroa.0169.6, %.loopexit.split-lp257 ], [ %.sroa.0169.1348, %.loopexit.split-lp ], [ %.sroa.0169.5, %.loopexit.split-lp252 ], [ %.sroa.0169.1348, %.loopexit ], [ %.sroa.0169.5, %.loopexit251 ], [ %.sroa.0169.6, %.loopexit256 ], [ %.sroa.0169.7, %.loopexit261 ], [ %.sroa.0169.7, %.loopexit.split-lp262 ] ; 3 uses
  %.sroa.38.3 = phi ptr [ %.sroa.38.0.lcssa, %bb.ak ], [ %.sroa.18.4, %.loopexit.split-lp257 ], [ %.sroa.38.1350, %.loopexit.split-lp ], [ %.sroa.38.5, %.loopexit.split-lp252 ], [ %.sroa.38.1350, %.loopexit ], [ %.sroa.38.5, %.loopexit251 ], [ %.sroa.18.4, %.loopexit256 ], [ %.sroa.38.7, %.loopexit261 ], [ %.sroa.38.7, %.loopexit.split-lp262 ]
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.ha, %bb.ak ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp254, %.loopexit.split-lp252 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit253, %.loopexit251 ], [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0169.3, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hb = ptrtoint ptr %.sroa.38.3 to i64
  %i.hc = ptrtoint ptr %.sroa.0169.3 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.3, i64 noundef %i.hd) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131: ; preds = %bb.am, %bb.al, %.thread, %bb.m
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.ca, %.thread ], [ %.pn50.pn.pn, %bb.al ], [ %.pn50.pn.pn, %bb.am ]
  %i.he = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.he) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, %bb.l
  %.sroa.0.0 = phi ptr [ %i.bk, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ null, %bb.l ]
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ %i.by, %bb.l ]
  call void @free(ptr noundef %.sroa.0.0) #20
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl19cotmatrix_intrinsicIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Matrix.10", align 8  ; 12 uses
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17
  %i.f = mul nsw i64 %i.e, %i.c                   ; 12 uses
  %i.g = sdiv i64 %i.f, 8
  %i.h = shl nsw i64 %i.g, 3                      ; 3 uses
  %i.i = sdiv i64 %i.f, 4
  %i.j = shl nsw i64 %i.i, 2                      ; 6 uses
  %.off.i.i.i.i = add i64 %i.f, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load <4 x i32>, ptr %i.a, align 16, !tbaa !18 ; 3 uses
  %i.l = icmp sgt i64 %i.f, 7
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load <4 x i32>, ptr %i.m, align 16, !tbaa !18 ; 2 uses
  %i.o = icmp samesign ugt i64 %i.f, 15
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.n, %bb.c ], [ %i.y, %.lr.ph.i.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.k, %bb.c ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.p = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.0.lcssa.i.i.i.i, <4 x i32> %.lcssa.i.i.i.i) ; 2 uses
  %i.q = icmp sgt i64 %i.j, %i.h
  br i1 %i.q, label %bb.d, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05779.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ 8, %bb.c ] ; 3 uses
  %.057.in78.i.i.i.i = phi i64 [ %.05779.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  %.sroa.064.077.i.i.i.i = phi <4 x i32> [ %i.u, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ]
  %i.r = phi <4 x i32> [ %i.y, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05779.i.i.i.i
  %i.t = load <4 x i32>, ptr %i.s, align 16, !tbaa !18
  %i.u = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.sroa.064.077.i.i.i.i, <4 x i32> %i.t) ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.057.in78.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load <4 x i32>, ptr %i.w, align 16, !tbaa !18
  %i.y = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.r, <4 x i32> %i.x) ; 2 uses
  %.057.i.i.i.i = add nuw nsw i64 %.05779.i.i.i.i, 8 ; 2 uses
  %i.z = icmp slt i64 %.057.i.i.i.i, %i.h
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !0

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  %i.ab = load <4 x i32>, ptr %i.aa, align 16, !tbaa !18
  %i.ac = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.p, <4 x i32> %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i, %bb.b
  %.sroa.064.2.i.i.i.i = phi <4 x i32> [ %i.k, %bb.b ], [ %i.ac, %bb.d ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ad = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %.sroa.064.2.i.i.i.i) ; 3 uses
  %i.ae = icmp slt i64 %i.j, %i.f
  br i1 %i.ae, label %.lr.ph84.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph84.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.af = sub i64 %i.f, %i.j                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph84.i.i.i.i.preheader592, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.i.i.i.i.preheader
  %n.vec = and i64 %i.af, -8                      ; 3 uses
  %i.ag = add i64 %i.j, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi525 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.al, %vector.body ]
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !20
  %wide.load526 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !20
  %i.ak = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load) ; 2 uses
  %i.al = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi525, <4 x i32> %wide.load526) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ak, <4 x i32> %i.al)
  %i.an = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i.preheader592

.lr.ph84.i.i.i.i.preheader592:                    ; preds = %.lr.ph84.i.i.i.i.preheader, %middle.block
  %.05582.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph84.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.181.i.i.i.i.ph = phi i32 [ %i.ad, %.lr.ph84.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph84.i.i.i.i

.lr.ph84.i.i.i.i:                                 ; preds = %.lr.ph84.i.i.i.i.preheader592, %.lr.ph84.i.i.i.i
  %.05582.i.i.i.i = phi i64 [ %i.ar, %.lr.ph84.i.i.i.i ], [ %.05582.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader592 ] ; 2 uses
  %.181.i.i.i.i = phi i32 [ %i.aq, %.lr.ph84.i.i.i.i ], [ %.181.i.i.i.i.ph, %.lr.ph84.i.i.i.i.preheader592 ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.05582.i.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20
  %i.aq = tail call noundef i32 @llvm.smax.i32(i32 %.181.i.i.i.i, i32 %i.ap) ; 2 uses
  %i.ar = add nsw i64 %.05582.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph84.i.i.i.i, !llvm.loop !161

bb.f:                                             ; preds = %bb.a
  %i.as = load i32, ptr %i.a, align 4, !tbaa !20  ; 3 uses
  %i.at = icmp sgt i64 %i.f, 1
  br i1 %i.at, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.au = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check528 = icmp ult i64 %i.f, 9
  br i1 %min.iters.check528, label %.lr.ph89.i.i.i.i.preheader588, label %vector.ph529

vector.ph529:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec530 = and i64 %i.au, -8                   ; 3 uses
  %i.av = or disjoint i64 %n.vec530, 1
  %broadcast.splatinsert531 = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat532 = shufflevector <4 x i32> %broadcast.splatinsert531, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph529
  %index534 = phi i64 [ 0, %vector.ph529 ], [ %index.next539, %vector.body533 ] ; 2 uses
  %vec.phi535 = phi <4 x i32> [ %broadcast.splat532, %vector.ph529 ], [ %i.az, %vector.body533 ]
  %vec.phi536 = phi <4 x i32> [ %broadcast.splat532, %vector.ph529 ], [ %i.ba, %vector.body533 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index534 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 20
  %wide.load537 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !20
  %wide.load538 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !20
  %i.az = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi535, <4 x i32> %wide.load537) ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi536, <4 x i32> %wide.load538) ; 2 uses
  %index.next539 = add nuw i64 %index534, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next539, %n.vec530
  br i1 %i.bb, label %middle.block540, label %vector.body533, !llvm.loop !162

middle.block540:                                  ; preds = %vector.body533
  %rdx.minmax541 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> %i.ba)
  %i.bc = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax541) ; 2 uses
  %cmp.n542 = icmp eq i64 %i.au, %n.vec530
  br i1 %cmp.n542, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i.preheader588

.lr.ph89.i.i.i.i.preheader588:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block540
  %.087.i.i.i.i.ph = phi i64 [ 1, %.lr.ph89.i.i.i.i.preheader ], [ %i.av, %middle.block540 ]
  %.286.i.i.i.i.ph = phi i32 [ %i.as, %.lr.ph89.i.i.i.i.preheader ], [ %i.bc, %middle.block540 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader588, %.lr.ph89.i.i.i.i
  %.087.i.i.i.i = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i ], [ %.087.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader588 ] ; 2 uses
  %.286.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %.286.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader588 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.087.i.i.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20
  %i.bf = tail call noundef i32 @llvm.smax.i32(i32 %.286.i.i.i.i, i32 %i.be) ; 2 uses
  %i.bg = add nuw nsw i64 %.087.i.i.i.i, 1        ; 2 uses
  %exitcond96.not.i.i.i.i = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond96.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit, label %.lr.ph89.i.i.i.i, !llvm.loop !163

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit: ; preds = %.lr.ph84.i.i.i.i, %.lr.ph89.i.i.i.i, %middle.block, %middle.block540, %bb.e, %bb.f
  %.3.i.i.i.i = phi i32 [ %i.bf, %.lr.ph89.i.i.i.i ], [ %i.as, %bb.f ], [ %i.ad, %bb.e ], [ %i.bc, %middle.block540 ], [ %i.an, %middle.block ], [ %i.aq, %.lr.ph84.i.i.i.i ]
  %i.bh = add nsw i32 %.3.i.i.i.i, 1              ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.bi, i64 noundef %i.bi)
  %i.bj = mul nsw i32 %i.bh, 10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.bk)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit unwind label %bb.l

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.bm = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #19 ; 7 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bo, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.bp = getelementptr i8, ptr %i.bm, i64 16
  store i32 0, ptr %i.bp, align 4, !tbaa !20
  store <4 x i32> <i32 1, i32 2, i32 0, i32 2>, ptr %i.bm, align 4, !tbaa !20
  %i.bq = getelementptr i8, ptr %i.bm, i64 20
  store i32 1, ptr %i.bq, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.b, align 8, !tbaa !16  ; 3 uses
  %i.bs = mul i64 %i.br, 12                       ; 3 uses
  %i.bt = icmp ugt i64 %i.bs, 576460752303423487
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
          to label %.noexc75 unwind label %.thread

.noexc75:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq i64 %i.bs, 0
  br i1 %.not, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.k
  %i.bu = mul i64 %i.br, 192
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #22
          to label %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bs
  %.pre = load i64, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.bx = phi i64 [ %.pre, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.br, %bb.k ]
  %.sroa.0169.4 = phi ptr [ %i.bv, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.k ] ; 4 uses
  %.sroa.38.4 = phi ptr [ %i.bw, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %bb.k ] ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %indvars.iv407 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next408, %bb.n ] ; 6 uses
  %.sroa.38.0354 = phi ptr [ %.sroa.38.4, %.preheader.lr.ph ], [ %.sroa.38.8, %bb.n ]
  %.sroa.18.0353 = phi ptr [ %.sroa.0169.4, %.preheader.lr.ph ], [ %.sroa.18.6, %bb.n ]
  %.sroa.0169.0352 = phi ptr [ %.sroa.0169.4, %.preheader.lr.ph ], [ %.sroa.0169.8, %bb.n ]
  br label %bb.o

._crit_edge:                                      ; preds = %bb.n, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit
  %.sroa.0169.0.lcssa = phi ptr [ %.sroa.0169.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.0169.8, %bb.n ] ; 5 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0169.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.18.6, %bb.n ]
  %.sroa.38.0.lcssa = phi ptr [ %.sroa.38.4, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE7reserveEm.exit ], [ %.sroa.38.8, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %.sroa.0169.0.lcssa, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %.sroa.18.0.lcssa, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  invoke void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dead_on_return %3)
          to label %bb.ai unwind label %bb.ak

bb.l:                                             ; preds = %bb.g, %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE8maxCoeffEv.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.m:                                             ; preds = %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

.thread:                                          ; preds = %bb.j, %_ZNSt12_Vector_baseIN5Eigen7TripletIdiEESaIS2_EE11_M_allocateEm.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

bb.n:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !16
  %i.ce = icmp sgt i64 %i.cd, %indvars.iv.next408
  br i1 %i.ce, label %.preheader, label %._crit_edge, !llvm.loop !164

bb.o:                                             ; preds = %.preheader, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 6 uses
  %.sroa.38.1350 = phi ptr [ %.sroa.38.0354, %.preheader ], [ %.sroa.38.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 7 uses
  %.sroa.18.1349 = phi ptr [ %.sroa.18.0353, %.preheader ], [ %.sroa.18.6, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 5 uses
  %.sroa.0169.1348 = phi ptr [ %.sroa.0169.0352, %.preheader ], [ %.sroa.0169.8, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129 ] ; 8 uses
  %i.cf = getelementptr [4 x i8], ptr %i.bm, i64 %indvars.iv ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !20
  %i.ch = sext i32 %i.cg to i64
  %i.ci = load ptr, ptr %1, align 8, !tbaa !15
  %i.cj = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ck = mul nsw i64 %i.cj, %i.ch
  %i.cl = getelementptr [4 x i8], ptr %i.ci, i64 %indvars.iv407 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20 ; 8 uses
  %i.co = getelementptr i8, ptr %i.cf, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !20
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cj, %i.cq
  %i.cs = getelementptr [4 x i8], ptr %i.cl, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !20 ; 8 uses
  %i.cu = load ptr, ptr %4, align 8, !tbaa !27    ; 2 uses
  %i.cv = load i64, ptr %i.bz, align 8, !tbaa !28
  %i.cw = mul nsw i64 %i.cv, %indvars.iv          ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv407
  %i.cy = getelementptr [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %.not.i.i78 = icmp eq ptr %.sroa.18.1349, %.sroa.38.1350
  br i1 %.not.i.i78, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.cn, ptr %.sroa.18.1349, align 8, !tbaa !20
  %.sroa.6156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.1349, i64 4
  store i32 %i.ct, ptr %.sroa.6156.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.1349, i64 8
  store double %i.cz, ptr %.sroa.7159.0..sroa_idx, align 8, !tbaa !30
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.da = ptrtoint ptr %.sroa.38.1350 to i64
  %i.db = ptrtoint ptr %.sroa.0169.1348 to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775792
  br i1 %i.dd, label %bb.r, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc80 unwind label %.loopexit.split-lp

.noexc80:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.de = ashr exact i64 %i.dc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i.i.i.i79 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i79)
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #22
          to label %.noexc81 unwind label %.loopexit ; 5 uses

.noexc81:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc ; 3 uses
  store i32 %i.cn, ptr %i.dl, align 8, !tbaa !20
  %.sroa.6156.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.ct, ptr %.sroa.6156.0..sroa_idx157, align 4, !tbaa !20
  %.sroa.7159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store double %i.cz, ptr %.sroa.7159.0..sroa_idx160, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0169.1348, %.sroa.38.1350
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc81, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %i.dk, %.noexc81 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0169.1348, %.noexc81 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !31, !alias.scope !180
  %i.dm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dm, %.sroa.38.1350
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc81
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dk, %.noexc81 ], [ %i.dn, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0169.1348, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.1348, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.di
  %.pre410 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre411 = load i64, ptr %i.bz, align 8, !tbaa !28
  %.pre416 = mul nsw i64 %.pre411, %indvars.iv
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.cw, %bb.p ], [ %.pre416, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.dp = phi ptr [ %i.cu, %bb.p ], [ %.pre410, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.0169.5 = phi ptr [ %.sroa.0169.1348, %bb.p ], [ %i.dk, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.sroa.18.1349, %bb.p ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.sroa.38.5 = phi ptr [ %.sroa.38.1350, %bb.p ], [ %i.do, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i.pn599 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i.pn to i64
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.dp, i64 %indvars.iv407
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %.pre-phi
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !30 ; 2 uses
  %.not.i.i82 = icmp eq ptr %.sroa.18.3, %.sroa.38.5
  br i1 %.not.i.i82, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.ct, ptr %.sroa.18.3, align 8, !tbaa !20
  %.sroa.6148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 20
  store i32 %i.cn, ptr %.sroa.6148.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 24
  store double %i.ds, ptr %.sroa.7151.0..sroa_idx, align 8, !tbaa !30
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 32
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.du = ptrtoint ptr %.sroa.38.5 to i64
  %i.dv = ptrtoint ptr %.sroa.0169.5 to i64       ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775792
  br i1 %i.dx, label %bb.w, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc95 unwind label %.loopexit.split-lp252

.noexc95:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83: ; preds = %bb.v
  %i.dy = ashr exact i64 %i.dw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i84 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i84, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #22
          to label %.noexc96 unwind label %.loopexit251 ; 6 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw ; 3 uses
  store i32 %i.ct, ptr %i.ef, align 8, !tbaa !20
  %.sroa.6148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %i.cn, ptr %.sroa.6148.0..sroa_idx149, align 4, !tbaa !20
  %.sroa.7151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store double %i.ds, ptr %.sroa.7151.0..sroa_idx152, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i86 = icmp eq ptr %.sroa.0169.5, %.sroa.38.5
  br i1 %.not10.i.i.i.i.i.i86, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87.preheader

.lr.ph.i.i.i.i.i.i87.preheader:                   ; preds = %.noexc96
  %i.eg = sub i64 %.0.lcssa.i.i.i.i.i.i.pn599, %i.dv ; 2 uses
  %i.eh = lshr i64 %i.eg, 4
  %i.ei = add nuw nsw i64 %i.eh, 1
  %xtraiter = and i64 %i.ei, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i.i.i87.prol

.lr.ph.i.i.i.i.i.i87.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i87.prol
  %.012.i.i.i.i.i.i88.prol = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i87.prol ], [ %i.ee, %.lr.ph.i.i.i.i.i.i87.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i89.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i87.prol ], [ %.sroa.0169.5, %.lr.ph.i.i.i.i.i.i87.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i87.prol ], [ 0, %.lr.ph.i.i.i.i.i.i87.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i88.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i89.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !181
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89.prol, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i87.prol.loopexit, label %.lr.ph.i.i.i.i.i.i87.prol, !llvm.loop !171

.lr.ph.i.i.i.i.i.i87.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i87.prol, %.lr.ph.i.i.i.i.i.i87.preheader
  %.lcssa545.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i87.prol ]
  %.012.i.i.i.i.i.i88.unr = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i87.prol ]
  %.0911.i.i.i.i.i.i89.unr = phi ptr [ %.sroa.0169.5, %.lr.ph.i.i.i.i.i.i87.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i.i87.prol ]
  %i.el = icmp ult i64 %i.eg, 48
  br i1 %i.el, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87

.lr.ph.i.i.i.i.i.i87:                             ; preds = %.lr.ph.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i.i.i87
  %.012.i.i.i.i.i.i88 = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i87 ], [ %.012.i.i.i.i.i.i88.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i89 = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i.i87 ], [ %.0911.i.i.i.i.i.i89.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i88, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i89, i64 16, i1 false), !tbaa.struct !31, !alias.scope !181
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false), !tbaa.struct !31, !alias.scope !181
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 32
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !31, !alias.scope !181
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 48 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !31, !alias.scope !181
  %i.es = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i89, i64 64
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i88, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i90.3 = icmp eq ptr %i.eq, %.0.lcssa.i.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i.i90.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91, label %.lr.ph.i.i.i.i.i.i87, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91: ; preds = %.lr.ph.i.i.i.i.i.i87.prol.loopexit, %.lr.ph.i.i.i.i.i.i87, %.noexc96
  %.0.lcssa.i.i.i.i.i.i92 = phi ptr [ %i.ee, %.noexc96 ], [ %.lcssa545.unr, %.lr.ph.i.i.i.i.i.i87.prol.loopexit ], [ %i.et, %.lr.ph.i.i.i.i.i.i87 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i92, i64 16
  %.not.i23.i.i.i93 = icmp eq ptr %.sroa.0169.5, null
  br i1 %.not.i23.i.i.i93, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.5, i64 noundef %i.dw) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94: ; preds = %bb.x, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i91
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec
  %.pre412 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre413 = load i64, ptr %i.bz, align 8, !tbaa !28
  %.pre417 = mul nsw i64 %.pre413, %indvars.iv
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94
  %.pre-phi418 = phi i64 [ %.pre-phi, %bb.u ], [ %.pre417, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %i.ew = phi ptr [ %i.dp, %bb.u ], [ %.pre412, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %.sroa.0169.6 = phi ptr [ %.sroa.0169.5, %bb.u ], [ %i.ee, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 8 uses
  %.sroa.18.4 = phi ptr [ %i.dt, %bb.u ], [ %i.eu, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 10 uses
  %.sroa.38.6 = phi ptr [ %.sroa.38.5, %bb.u ], [ %i.ev, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i94 ] ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %i.ew, i64 %indvars.iv407
  %i.ey = getelementptr [8 x i8], ptr %i.ex, i64 %.pre-phi418
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !30
  %i.fa = fneg double %i.ez                       ; 2 uses
  %.not.i.i98 = icmp eq ptr %.sroa.18.4, %.sroa.38.6
  br i1 %.not.i.i98, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.cn, ptr %.sroa.18.4, align 8, !tbaa !20
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 4
  store i32 %i.cn, ptr %.sroa.6140.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 8
  store double %i.fa, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !30
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.fb = ptrtoint ptr %.sroa.18.4 to i64
  %i.fc = ptrtoint ptr %.sroa.0169.6 to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775792
  br i1 %i.fe, label %bb.ab, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc111 unwind label %.loopexit.split-lp257

.noexc111:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99: ; preds = %bb.aa
  %i.ff = ashr exact i64 %i.fd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i100 = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i.i100, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 576460752303423487)
  %i.fj = select i1 %i.fh, i64 576460752303423487, i64 %i.fi ; 3 uses
  %.not.i.i.i.i101 = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i101)
  %i.fk = shl nuw nsw i64 %i.fj, 4
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #22
          to label %.noexc112 unwind label %.loopexit256 ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd ; 3 uses
  store i32 %i.cn, ptr %i.fm, align 8, !tbaa !20
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %i.cn, ptr %.sroa.6140.0..sroa_idx141, align 4, !tbaa !20
  %.sroa.7143.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store double %i.fa, ptr %.sroa.7143.0..sroa_idx144, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i102 = icmp eq ptr %.sroa.0169.6, %.sroa.18.4
  br i1 %.not10.i.i.i.i.i.i102, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107, label %.lr.ph.i.i.i.i.i.i103

.lr.ph.i.i.i.i.i.i103:                            ; preds = %.noexc112, %.lr.ph.i.i.i.i.i.i103
  %.012.i.i.i.i.i.i104 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i103 ], [ %i.fl, %.noexc112 ] ; 2 uses
  %.0911.i.i.i.i.i.i105 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i.i103 ], [ %.sroa.0169.6, %.noexc112 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i104, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i105, i64 16, i1 false), !tbaa.struct !31, !alias.scope !182
  %i.fn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i105, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i104, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i106 = icmp eq ptr %i.fn, %.sroa.18.4
  br i1 %.not.i.i.i.i.i.i106, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107, label %.lr.ph.i.i.i.i.i.i103, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107: ; preds = %.lr.ph.i.i.i.i.i.i103, %.noexc112
  %.0.lcssa.i.i.i.i.i.i108 = phi ptr [ %i.fl, %.noexc112 ], [ %i.fo, %.lr.ph.i.i.i.i.i.i103 ]
  %.not.i23.i.i.i109 = icmp eq ptr %.sroa.0169.6, null
  br i1 %.not.i23.i.i.i109, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.6, i64 noundef %i.fd) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110: ; preds = %bb.ac, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i107
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %i.fj
  %.pre414 = load ptr, ptr %4, align 8, !tbaa !27
  %.pre415 = load i64, ptr %i.bz, align 8, !tbaa !28
  %.pre419 = mul nsw i64 %.pre415, %indvars.iv
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110
  %.pre-phi420 = phi i64 [ %.pre-phi418, %bb.z ], [ %.pre419, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ]
  %i.fq = phi ptr [ %i.ew, %bb.z ], [ %.pre414, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ]
  %.sroa.0169.7 = phi ptr [ %.sroa.0169.6, %bb.z ], [ %i.fl, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 9 uses
  %.0.lcssa.i.i.i.i.i.i108.pn = phi ptr [ %.sroa.18.4, %bb.z ], [ %.0.lcssa.i.i.i.i.i.i108, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 6 uses
  %.sroa.38.7 = phi ptr [ %.sroa.38.6, %bb.z ], [ %i.fp, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i110 ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i108.pn600 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.i108.pn to i64
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 16 ; 2 uses
  %i.fr = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv407
  %i.fs = getelementptr [8 x i8], ptr %i.fr, i64 %.pre-phi420
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !30
  %i.fu = fneg double %i.ft                       ; 2 uses
  %.not.i.i114 = icmp eq ptr %.sroa.18.5, %.sroa.38.7
  br i1 %.not.i.i114, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.ct, ptr %.sroa.18.5, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 20
  store i32 %i.ct, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 24
  store double %i.fu, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i108.pn, i64 32
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

bb.af:                                            ; preds = %bb.ad
  %i.fw = ptrtoint ptr %.sroa.38.7 to i64
  %i.fx = ptrtoint ptr %.sroa.0169.7 to i64       ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 4 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775792
  br i1 %i.fz, label %bb.ag, label %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc127 unwind label %.loopexit.split-lp262

.noexc127:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115: ; preds = %bb.af
  %i.ga = ashr exact i64 %i.fy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i.i.i116, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 576460752303423487)
  %i.ge = select i1 %i.gc, i64 576460752303423487, i64 %i.gd ; 3 uses
  %.not.i.i.i.i117 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i.i.i117)
  %i.gf = shl nuw nsw i64 %i.ge, 4
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #22
          to label %.noexc128 unwind label %.loopexit261 ; 6 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 3 uses
  store i32 %i.ct, ptr %i.gh, align 8, !tbaa !20
  %.sroa.6.0..sroa_idx133 = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.ct, ptr %.sroa.6.0..sroa_idx133, align 4, !tbaa !20
  %.sroa.7.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store double %i.fu, ptr %.sroa.7.0..sroa_idx135, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i118 = icmp eq ptr %.sroa.0169.7, %.sroa.38.7
  br i1 %.not10.i.i.i.i.i.i118, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119.preheader

.lr.ph.i.i.i.i.i.i119.preheader:                  ; preds = %.noexc128
  %i.gi = sub i64 %.0.lcssa.i.i.i.i.i.i108.pn600, %i.fx ; 2 uses
  %i.gj = lshr i64 %i.gi, 4
  %i.gk = add nuw nsw i64 %i.gj, 1
  %xtraiter601 = and i64 %i.gk, 3                 ; 2 uses
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod602.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol

.lr.ph.i.i.i.i.i.i119.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i119.preheader, %.lr.ph.i.i.i.i.i.i119.prol
  %.012.i.i.i.i.i.i120.prol = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.i119.prol ], [ %i.gg, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i121.prol = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i119.prol ], [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ] ; 2 uses
  %prol.iter603 = phi i64 [ %prol.iter603.next, %.lr.ph.i.i.i.i.i.i119.prol ], [ 0, %.lr.ph.i.i.i.i.i.i119.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121.prol, i64 16, i1 false), !tbaa.struct !31, !alias.scope !183
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121.prol, i64 16 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120.prol, i64 16 ; 3 uses
  %prol.iter603.next = add i64 %prol.iter603, 1   ; 2 uses
  %prol.iter603.cmp.not = icmp eq i64 %prol.iter603.next, %xtraiter601
  br i1 %prol.iter603.cmp.not, label %.lr.ph.i.i.i.i.i.i119.prol.loopexit, label %.lr.ph.i.i.i.i.i.i119.prol, !llvm.loop !178

.lr.ph.i.i.i.i.i.i119.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i119.prol, %.lr.ph.i.i.i.i.i.i119.preheader
  %.lcssa547.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gm, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.012.i.i.i.i.i.i120.unr = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gm, %.lr.ph.i.i.i.i.i.i119.prol ]
  %.0911.i.i.i.i.i.i121.unr = phi ptr [ %.sroa.0169.7, %.lr.ph.i.i.i.i.i.i119.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.i.i119.prol ]
  %i.gn = icmp ult i64 %i.gi, 48
  br i1 %i.gn, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119

.lr.ph.i.i.i.i.i.i119:                            ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119
  %.012.i.i.i.i.i.i120 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i119 ], [ %.012.i.i.i.i.i.i120.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i121 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i119 ], [ %.0911.i.i.i.i.i.i121.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i120, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i121, i64 16, i1 false), !tbaa.struct !31, !alias.scope !183
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, ptr noundef nonnull align 8 dereferenceable(16) %i.go, i64 16, i1 false), !tbaa.struct !31, !alias.scope !183
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 32
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !31, !alias.scope !183
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 48 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !31, !alias.scope !183
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i121, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i120, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i122.3 = icmp eq ptr %i.gs, %.0.lcssa.i.i.i.i.i.i108.pn
  br i1 %.not.i.i.i.i.i.i122.3, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123, label %.lr.ph.i.i.i.i.i.i119, !llvm.loop !1

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123: ; preds = %.lr.ph.i.i.i.i.i.i119.prol.loopexit, %.lr.ph.i.i.i.i.i.i119, %.noexc128
  %.0.lcssa.i.i.i.i.i.i124 = phi ptr [ %i.gg, %.noexc128 ], [ %.lcssa547.unr, %.lr.ph.i.i.i.i.i.i119.prol.loopexit ], [ %i.gv, %.lr.ph.i.i.i.i.i.i119 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i124, i64 16
  %.not.i23.i.i.i125 = icmp eq ptr %.sroa.0169.7, null
  br i1 %.not.i23.i.i.i125, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.7, i64 noundef %i.fy) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126: ; preds = %bb.ah, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i123
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.ge
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE9push_backEOS2_.exit129: ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126, %bb.ae
  %.sroa.0169.8 = phi ptr [ %i.gg, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.0169.7, %bb.ae ] ; 3 uses
  %.sroa.18.6 = phi ptr [ %i.gw, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %i.fv, %bb.ae ] ; 3 uses
  %.sroa.38.8 = phi ptr [ %i.gx, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i126 ], [ %.sroa.38.7, %bb.ae ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.n, label %bb.o, !llvm.loop !179

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit251:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i83
  %lpad.loopexit253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp252:                            ; preds = %bb.w
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit256:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i99
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp257:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit261:                                     ; preds = %_ZNKSt6vectorIN5Eigen7TripletIdiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i115
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp262:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ai:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.not.i.i.i = icmp eq ptr %.sroa.0169.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gy = ptrtoint ptr %.sroa.38.0.lcssa to i64
  %i.gz = ptrtoint ptr %.sroa.0169.0.lcssa to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.0.lcssa, i64 noundef %i.ha) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit: ; preds = %bb.ai, %bb.aj
  %i.hb = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.hb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @free(ptr noundef %i.bm) #20
  ret void

bb.ak:                                            ; preds = %._crit_edge
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.al

bb.al:                                            ; preds = %.loopexit261, %.loopexit.split-lp262, %.loopexit256, %.loopexit.split-lp257, %.loopexit251, %.loopexit.split-lp252, %.loopexit, %.loopexit.split-lp, %bb.ak
  %.sroa.0169.3 = phi ptr [ %.sroa.0169.0.lcssa, %bb.ak ], [ %.sroa.0169.6, %.loopexit.split-lp257 ], [ %.sroa.0169.1348, %.loopexit.split-lp ], [ %.sroa.0169.5, %.loopexit.split-lp252 ], [ %.sroa.0169.1348, %.loopexit ], [ %.sroa.0169.5, %.loopexit251 ], [ %.sroa.0169.6, %.loopexit256 ], [ %.sroa.0169.7, %.loopexit261 ], [ %.sroa.0169.7, %.loopexit.split-lp262 ] ; 3 uses
  %.sroa.38.3 = phi ptr [ %.sroa.38.0.lcssa, %bb.ak ], [ %.sroa.18.4, %.loopexit.split-lp257 ], [ %.sroa.38.1350, %.loopexit.split-lp ], [ %.sroa.38.5, %.loopexit.split-lp252 ], [ %.sroa.38.1350, %.loopexit ], [ %.sroa.38.5, %.loopexit251 ], [ %.sroa.18.4, %.loopexit256 ], [ %.sroa.38.7, %.loopexit261 ], [ %.sroa.38.7, %.loopexit.split-lp262 ]
  %.pn50.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ak ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp257 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp254, %.loopexit.split-lp252 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit253, %.loopexit251 ], [ %lpad.loopexit258, %.loopexit256 ], [ %lpad.loopexit263, %.loopexit261 ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp262 ] ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %.sroa.0169.3, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hd = ptrtoint ptr %.sroa.38.3 to i64
  %i.he = ptrtoint ptr %.sroa.0169.3 to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0169.3, i64 noundef %i.hf) #23
  br label %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131

_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131: ; preds = %bb.am, %bb.al, %.thread, %bb.m
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.m ], [ %i.cc, %.thread ], [ %.pn50.pn.pn, %bb.al ], [ %.pn50.pn.pn, %bb.am ]
  %i.hg = load ptr, ptr %4, align 8, !tbaa !27
  call void @free(ptr noundef %i.hg) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131, %bb.l
  %.sroa.0.0 = phi ptr [ %i.bm, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ null, %bb.l ]
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %_ZNSt6vectorIN5Eigen7TripletIdiEESaIS2_EED2Ev.exit131 ], [ %i.ca, %bb.l ]
  call void @free(ptr noundef %.sroa.0.0) #20
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn
}

declare void @_ZN3igl17cotmatrix_entriesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = add nsw i64 %i.b, %1                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43
  %i.f = icmp sgt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  %i.h = shl nuw i64 %i.c, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #22 ; 3 uses
  %i.k = icmp ugt i64 %i.c, 4611686018427387903
  %i.l = shl nuw i64 %i.c, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #22
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.b
  %i.o = load i64, ptr %i.a, align 8, !tbaa !44
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %i.c) ; 3 uses
  %i.p = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !45  ; 3 uses
  br i1 %i.p, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.r, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #23
  resume { ptr, i32 } %i.s

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.t = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.r, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.u, align 8, !tbaa !46
  store i64 %i.c, ptr %i.d, align 8, !tbaa !43
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.c, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.w = icmp eq ptr %.pre.i, null
  br i1 %i.w, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #23
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.d, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17set_from_tripletsIN9__gnu_cxx17__normal_iteratorIPNS_7TripletIdiEESt6vectorIS5_SaIS5_EEEENS_12SparseMatrixIdLi0EiEENS0_13scalar_sum_opIddEEEEvRKT_SH_RT0_T1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef align 1 dead_on_return %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::SparseMatrix.64", align 8 ; 17 uses
  %5 = alloca %"class.Eigen::Matrix.68", align 8  ; 9 uses
  %6 = alloca %"struct.Eigen::internal::scalar_sum_op", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40
  store i8 0, ptr %4, align 8, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.d, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.h = shl i64 %i.b, 2                          ; 2 uses
  %i.i = add i64 %i.h, 4
  %calloc41 = tail call ptr @calloc(i64 1, i64 %i.i) ; 2 uses
  store ptr %calloc41, ptr %i.g, align 8, !tbaa !52
  %.not6.i = icmp eq ptr %calloc41, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %.pn.pn.pn, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #20
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit:        ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !188    ; 2 uses
  %.not = icmp eq ptr %i.n, %i.o
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %.lr.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp sgt i64 %i.b, 0
  br i1 %i.p, label %bb.f, label %.lr.ph.sink.split

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.q, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %calloc = tail call ptr @calloc(i64 1, i64 %i.h) ; 3 uses
  %i.r = icmp eq ptr %calloc, null
  br i1 %i.r, label %.invoke.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  store ptr %calloc, ptr %5, align 8, !tbaa !55
  br label %.lr.ph.sink.split

.lr.ph.sink.split:                                ; preds = %bb.e, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i
  %.ph = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit.loopexit.i ], [ null, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !189
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.sink.split, %bb.d
  %i.v = phi ptr [ null, %bb.d ], [ %.ph, %.lr.ph.sink.split ]
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i
  invoke void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit unwind label %bb.j

bb.h:                                             ; preds = %._crit_edge32
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.020.028 = phi ptr [ %i.n, %.lr.ph ], [ %i.ac, %bb.i ] ; 2 uses
  %i.x = load i32, ptr %.sroa.020.028, align 4, !tbaa !20
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !20
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.028, i64 16 ; 2 uses
  %.not25 = icmp eq ptr %i.ac, %i.o
  br i1 %.not25, label %._crit_edge, label %bb.i, !llvm.loop !184

_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit: ; preds = %._crit_edge
  %i.ad = load i64, ptr %0, align 8, !tbaa !188
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !188   ; 2 uses
  %.not2629 = icmp eq ptr %i.af, %i.ae
  br i1 %.not2629, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !47
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !57
  br label %bb.k

._crit_edge32:                                    ; preds = %bb.k, %_ZN5Eigen12SparseMatrixIdLi1EiE7reserveINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_RKNS5_10value_typeE.exit
  invoke void @_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 1 dead_on_return %6)
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph31, %bb.k
  %.sroa.0.030 = phi ptr [ %i.ae, %.lr.ph31 ], [ %i.bc, %bb.k ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !30
  %i.ap = load i32, ptr %.sroa.0.030, align 8, !tbaa !20
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.aq
  %i.au = load i32, ptr %i.at, align 4, !tbaa !20
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aq ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !20
  %i.ay = add nsw i32 %i.aw, %i.au
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.az
  store i32 %i.as, ptr %i.ba, align 4, !tbaa !20
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.az
  store double %i.ao, ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.030, i64 16 ; 2 uses
  %.not26 = icmp eq ptr %i.bc, %i.af
  br i1 %.not26, label %._crit_edge32, label %bb.k, !llvm.loop !185

bb.l:                                             ; preds = %._crit_edge32
  %i.bd = load ptr, ptr %5, align 8, !tbaa !55
  call void @free(ptr noundef %i.bd) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.w, %bb.h ]
  %i.be = load ptr, ptr %5, align 8, !tbaa !55
  call void @free(ptr noundef %i.be) #20
  br label %.body

.body:                                            ; preds = %bb.g, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %_ZN5Eigen12SparseMatrixIdLi1EiEC2Ell.exit
  %i.bf = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !52
  call void @free(ptr noundef %i.bg) #20
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !56
  call void @free(ptr noundef %i.bh) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !47 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #23
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.s:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.bo, %bb.s ]
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE18collapseDuplicatesINS_8internal13scalar_sum_opIddEEEEvT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 1 dead_on_return %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE4fillERKi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = shl nuw i64 %i.b, 2                      ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #19 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.invoke.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.f, i8 -1, i64 %i.e, i1 false), !tbaa !20
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE4fillERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE4fillERKi.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit, %bb.a
  %.sroa.0.044 = phi ptr [ null, %bb.a ], [ %i.f, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !53   ; 3 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56   ; 2 uses
  br i1 %i.k, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE4fillERKi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.c

._crit_edge52:                                    ; preds = %._crit_edge, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE4fillERKi.exit
  %.028.lcssa = phi i32 [ 0, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE4fillERKi.exit ], [ %.1.lcssa, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.j
  store i32 %.028.lcssa, ptr %i.s, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @free(ptr noundef %i.o) #20
  store ptr null, ptr %i.t, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.w = load i64, ptr %i.i, align 8, !tbaa !53
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !20
  %i.z = sext i32 %i.y to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.z, double noundef 0.000000e+00)
          to label %bb.h unwind label %common.resume

bb.c:                                             ; preds = %.lr.ph51, %._crit_edge
  %.02750 = phi i64 [ 0, %.lr.ph51 ], [ %i.aj, %._crit_edge ] ; 3 uses
  %.02849 = phi i32 [ 0, %.lr.ph51 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.02750 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.02750
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20 ; 2 uses
  %i.ae = add nsw i32 %i.ad, %i.ab
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp sgt i32 %i.ad, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ah = sext i32 %i.ab to i64
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.1.lcssa = phi i32 [ %.02849, %bb.c ], [ %.2, %bb.g ] ; 2 uses
  store i32 %.02849, ptr %i.aa, align 4, !tbaa !20
  %i.aj = add nuw nsw i64 %.02750, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aj, %i.j
  br i1 %exitcond.not, label %._crit_edge52, label %bb.c, !llvm.loop !190

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.048 = phi i64 [ %i.ah, %.lr.ph ], [ %i.bd, %bb.g ] ; 4 uses
  %.147 = phi i32 [ %.02849, %.lr.ph ], [ %.2, %bb.g ] ; 4 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %.048
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.sroa.0.044, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !20 ; 2 uses
  %.not = icmp slt i32 %i.ao, %.02849
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !57  ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %.048
  %i.at = load double, ptr %i.ar, align 8, !tbaa !30
  %i.au = load double, ptr %i.as, align 8, !tbaa !30
  %i.av = fadd double %i.at, %i.au
  store double %i.av, ptr %i.ar, align 8, !tbaa !30
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !57  ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %.048
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !30
  %i.az = sext i32 %.147 to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az
  store double %i.ay, ptr %i.ba, align 8, !tbaa !30
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.az
  store i32 %i.al, ptr %i.bb, align 4, !tbaa !20
  store i32 %.147, ptr %i.an, align 4, !tbaa !20
  %i.bc = add nsw i32 %.147, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi i32 [ %.147, %bb.e ], [ %i.bc, %bb.f ] ; 2 uses
  %i.bd = add nsw i64 %.048, 1                    ; 2 uses
  %i.be = icmp slt i64 %i.bd, %i.af
  br i1 %i.be, label %bb.d, label %._crit_edge, !llvm.loop !191

bb.h:                                             ; preds = %._crit_edge52
  tail call void @free(ptr noundef %.sroa.0.044) #20
  ret void

common.resume:                                    ; preds = %._crit_edge52
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0.044) #20
  resume { ptr, i32 } %i.bf
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !51   ; 13 uses
  store i8 0, ptr %2, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.f, align 8, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = shl i64 %i.d, 2                          ; 2 uses
  %i.j = add i64 %i.i, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.j) ; 16 uses
  store ptr %calloc, ptr %i.h, align 8, !tbaa !41
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #20
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.d, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !20
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp sgt i64 %i.u, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %calloc, i64 %i.ab
  %i.ac = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.ac)
  %i.ad = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ae = add i64 %smax.i, %i.ad
  %i.af = shl i64 %i.ae, 2
  %i.ag = and i64 %i.af, -16
  %i.ah = add i64 %i.ag, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !18
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.d
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !20
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03069.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03069.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !20 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !20 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !20
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !20
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !192

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !20
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !20
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !20
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !20
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !20
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !20
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !20
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !20
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !20
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !193

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03069.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !194

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #19 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03069 = phi i64 [ %i.df, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03069
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !20
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03069
  %i.db = load i32, ptr %i.da, align 4, !tbaa !20 ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = add nsw i64 %i.dc, %i.cz
  %i.de = icmp sgt i32 %i.db, 0
  br i1 %i.de, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.df = add nuw nsw i64 %.03069, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.b
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !194

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dm, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !20
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !20
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !20
  %i.dm = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dn = icmp slt i64 %i.dm, %i.dd
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !193

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.02873.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gn, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.02972.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.02873.epil.init ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !20
  store i32 %.02972.epil.init, ptr %i.do, align 4, !tbaa !20
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.02873.epil.init
  store i32 %.02972.epil.init, ptr %i.dq, align 4, !tbaa !20
  %i.dr = add nsw i32 %i.dp, %.02972.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.029.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dr, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.029.lcssa, ptr %i.ds, align 4, !tbaa !20
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.du = sext i32 %.029.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 noundef %i.du, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge75
  %i.dv = load i64, ptr %i.a, align 8, !tbaa !53  ; 3 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !57 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !56 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, null
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8            ; 6 uses
  %i.ei = load ptr, ptr %i.dt, align 8            ; 4 uses
  br i1 %i.ef, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv90 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !20 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !20 ; 2 uses
  %i.en = sext i32 %i.em to i64                   ; 3 uses
  %i.eo = icmp slt i32 %i.ek, %i.em
  br i1 %i.eo, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.ep = sext i32 %i.ek to i64                   ; 6 uses
  %i.eq = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.er = sub nsw i64 %i.en, %i.ep
  %xtraiter117 = and i64 %i.er, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ep
  %i.et = load i32, ptr %i.es, align 4, !tbaa !20
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !20 ; 2 uses
  %i.ex = add nsw i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !20
  %i.ey = sext i32 %i.ew to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ey
  store i32 %i.eq, ptr %i.ez, align 4, !tbaa !20
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.ep
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !30
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ey
  store double %i.fb, ptr %i.fc, align 8, !tbaa !30
  %i.fd = add nsw i64 %i.ep, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.ep, %.lr.ph77.us.preheader ], [ %i.fd, %.lr.ph77.us.prol ]
  %i.fe = add nsw i64 %i.en, -1
  %i.ff = icmp eq i64 %i.fe, %i.ep
  br i1 %i.ff, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gd, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %.sroa.8.076.us
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !20
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !20 ; 2 uses
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !20
  %i.fm = sext i32 %i.fk to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.fm
  store i32 %i.eq, ptr %i.fn, align 4, !tbaa !20
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %.sroa.8.076.us
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !30
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fm
  store double %i.fp, ptr %i.fq, align 8, !tbaa !30
  %i.fr = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !20
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !20 ; 2 uses
  %i.fx = add nsw i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !20
  %i.fy = sext i32 %i.fw to i64                   ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.fy
  store i32 %i.eq, ptr %i.fz, align 4, !tbaa !20
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.fr
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !30
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fy
  store double %i.gb, ptr %i.gc, align 8, !tbaa !30
  %i.gd = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gd, %i.en
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !195

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.dv
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !196

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.02873 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gn, %.lr.ph74 ] ; 4 uses
  %.02972 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.02873 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !20
  store i32 %.02972, ptr %i.ge, align 4, !tbaa !20
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.02873
  store i32 %.02972, ptr %i.gg, align 4, !tbaa !20
  %i.gh = add nsw i32 %i.gf, %.02972              ; 3 uses
  %i.gi = or disjoint i64 %.02873, 1              ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !20
  store i32 %i.gh, ptr %i.gj, align 4, !tbaa !20
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gi
  store i32 %i.gh, ptr %i.gl, align 4, !tbaa !20
  %i.gm = add nsw i32 %i.gk, %i.gh                ; 3 uses
  %i.gn = add nuw nsw i64 %.02873, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !197

bb.h:                                             ; preds = %._crit_edge75
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #20
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !20
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !20 ; 2 uses
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = add nsw i64 %i.gu, %i.gr
  %i.gw = icmp sgt i32 %i.gt, 0
  br i1 %i.gw, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.gx = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.dv
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !196

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.hj, %.lr.ph77 ], [ %i.gr, %.lr.ph77.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %.sroa.8.076
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !20
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ha ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !20 ; 2 uses
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !20
  %i.he = sext i32 %i.hc to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.he
  store i32 %i.gx, ptr %i.hf, align 4, !tbaa !20
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %.sroa.8.076
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !30
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.he
  store double %i.hh, ptr %i.hi, align 8, !tbaa !30
  %i.hj = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.hk = icmp slt i64 %i.hj, %i.gv
  br i1 %i.hk, label %.lr.ph77, label %._crit_edge78, !llvm.loop !195

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.hl = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eh, %._crit_edge78.us ], [ %i.eh, %._crit_edge78 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load <2 x i64>, ptr %i.e, align 8, !tbaa !44
  %i.hp = load <2 x i64>, ptr %i.hn, align 8, !tbaa !44
  store <2 x i64> %i.ho, ptr %i.hn, align 8, !tbaa !44
  store <2 x i64> %i.hp, ptr %i.e, align 8, !tbaa !44
  %i.hq = load <2 x ptr>, ptr %i.h, align 8, !tbaa !46
  %i.hr = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !46
  %i.hs = load ptr, ptr %i.hm, align 8, !tbaa !46
  store <2 x ptr> %i.hq, ptr %i.hm, align 8, !tbaa !46
  store <2 x ptr> %i.hr, ptr %i.h, align 8, !tbaa !46
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hu = load ptr, ptr %i.dt, align 8, !tbaa !45
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hx = load <2 x ptr>, ptr %i.ht, align 8, !tbaa !199
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !45
  store ptr %i.hl, ptr %i.hv, align 8, !tbaa !46
  store <2 x ptr> %i.hx, ptr %i.dt, align 8, !tbaa !199
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hz = load <2 x i64>, ptr %i.g, align 8, !tbaa !44
  %i.ia = load <2 x i64>, ptr %i.hy, align 8, !tbaa !44
  store <2 x i64> %i.hz, ptr %i.hy, align 8, !tbaa !44
  store <2 x i64> %i.ia, ptr %i.g, align 8, !tbaa !44
  call void @free(ptr noundef %.sroa.052.0106) #20
  call void @free(ptr noundef %i.hs) #20
  %i.ib = load ptr, ptr %i.n, align 8, !tbaa !42
  call void @free(ptr noundef %i.ib) #20
  %i.ic = load ptr, ptr %i.dt, align 8, !tbaa !57 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge81
  %i.ie = load ptr, ptr %i.hw, align 8, !tbaa !47 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #23
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret ptr %0

.body45:                                          ; preds = %bb.h, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.go, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #20
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  tail call void @free(ptr noundef %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #23
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !53   ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #19 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !56
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !55     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %._crit_edge107, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %.070105.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ]
  %.076104.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ar, %._crit_edge107.loopexit.unr-lcssa ] ; 2 uses
  %.077103.epil.init = phi i32 [ 0, %.lr.ph106 ], [ %i.ay, %._crit_edge107.loopexit.unr-lcssa ]
  %lcmp.mod156 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104.epil.init
  store i32 %.077103.epil.init, ptr %i.n, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.070105.epil.init, %i.q
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader152, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  %.070.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader152 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.070.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52   ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !53   ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !20   ; 2 uses
  br i1 %i.x, label %.lr.ph117, label %._crit_edge118._crit_edge

.lr.ph117:                                        ; preds = %._crit_edge107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !56
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph106.new
  %.070105 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ba, %bb.d ]
  %.076104 = phi i64 [ 0, %.lr.ph106.new ], [ %i.ar, %bb.d ] ; 5 uses
  %.077103 = phi i32 [ 0, %.lr.ph106.new ], [ %i.ay, %bb.d ] ; 2 uses
  %niter158 = phi i64 [ 0, %.lr.ph106.new ], [ %niter158.next.1, %bb.d ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.076104
  store i32 %.077103, ptr %i.ab, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.076104
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20 ; 2 uses
  %i.ae = or disjoint i64 %.076104, 1             ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.076104
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !20
  %i.aj = add i32 %i.ad, %.077103
  %i.ak = add i32 %i.aj, %i.ag
  %i.al = sub i32 %i.ak, %i.ai                    ; 2 uses
  %i.am = sext i32 %i.ad to i64
  %i.an = add nsw i64 %.070105, %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !20 ; 2 uses
  %i.ar = add nuw nsw i64 %.076104, 2             ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !20
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ae
  %i.av = load i32, ptr %i.au, align 4, !tbaa !20
  %i.aw = add i32 %i.aq, %i.al
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = sub i32 %i.ax, %i.av                    ; 2 uses
  %i.az = sext i32 %i.aq to i64
  %i.ba = add nsw i64 %i.an, %i.az                ; 3 uses
  %niter158.next.1 = add nuw nsw i64 %niter158, 2 ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %._crit_edge107.loopexit.unr-lcssa, label %bb.d, !llvm.loop !200

bb.e:                                             ; preds = %.lr.ph117, %._crit_edge112
  %.074115.in = phi i64 [ %i.v, %.lr.ph117 ], [ %.074115, %._crit_edge112 ] ; 2 uses
  %.075114 = phi i32 [ %i.y, %.lr.ph117 ], [ %i.cc, %._crit_edge112 ]
  %.074115 = add nsw i64 %.074115.in, -1          ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.074115 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !20 ; 4 uses
  %i.bd = sub nsw i32 %.075114, %i.bc             ; 4 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph111, label %.._crit_edge112_crit_edge

.._crit_edge112_crit_edge:                        ; preds = %bb.e
  %.phi.trans.insert123 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115
  %.pre124 = load i32, ptr %.phi.trans.insert123, align 4, !tbaa !20
  br label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.e
  %i.bf = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 4 uses
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.074115 ; 4 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !57  ; 3 uses
  %.pre122 = load i32, ptr %i.bi, align 4, !tbaa !20 ; 2 uses
  %i.bk = and i32 %i.bd, 1
  %lcmp.mod162.not = icmp eq i32 %i.bk, 0
  br i1 %lcmp.mod162.not, label %.prol.loopexit160, label %.prol.loopexit160.unr-lcssa

.prol.loopexit160.unr-lcssa:                      ; preds = %.lr.ph111
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr [4 x i8], ptr %i.bh, i64 %i.bg ; 2 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20
  %i.bp = sext i32 %.pre122 to i64
  %i.bq = getelementptr [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !20
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !20 ; 3 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bj, i64 %i.bg ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !30
  %i.bw = load i32, ptr %i.bi, align 4, !tbaa !20 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bt, i64 %i.bx
  store double %i.bv, ptr %i.by, align 8, !tbaa !30
  %i.bz = add nsw i64 %i.bg, -1
  br label %.prol.loopexit160

.prol.loopexit160:                                ; preds = %.prol.loopexit160.unr-lcssa, %.lr.ph111
  %.lcssa144.unr = phi i32 [ poison, %.lr.ph111 ], [ %i.br, %.prol.loopexit160.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph111 ], [ %i.bw, %.prol.loopexit160.unr-lcssa ]
  %.unr163 = phi i32 [ %.pre122, %.lr.ph111 ], [ %i.bw, %.prol.loopexit160.unr-lcssa ]
  %.unr164 = phi i32 [ %i.bc, %.lr.ph111 ], [ %i.br, %.prol.loopexit160.unr-lcssa ]
  %.073109.unr = phi i64 [ %i.bg, %.lr.ph111 ], [ %i.bz, %.prol.loopexit160.unr-lcssa ]
  %i.ca = icmp eq i32 %i.bf, 0
  br i1 %i.ca, label %._crit_edge112, label %.lr.ph111.new

._crit_edge112:                                   ; preds = %.prol.loopexit160, %.lr.ph111.new, %.._crit_edge112_crit_edge
  %i.cb = phi i32 [ %.pre124, %.._crit_edge112_crit_edge ], [ %.lcssa.unr, %.prol.loopexit160 ], [ %i.dh, %.lr.ph111.new ]
  %i.cc = phi i32 [ %i.bc, %.._crit_edge112_crit_edge ], [ %.lcssa144.unr, %.prol.loopexit160 ], [ %i.dc, %.lr.ph111.new ]
  store i32 %i.cb, ptr %i.bb, align 4, !tbaa !20
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.074115
  store i32 %i.bd, ptr %i.cd, align 4, !tbaa !20
  %i.ce = icmp samesign ugt i64 %.074115.in, 1
  br i1 %i.ce, label %bb.e, label %._crit_edge118, !llvm.loop !201

.lr.ph111.new:                                    ; preds = %.prol.loopexit160, %.lr.ph111.new
  %i.cf = phi i32 [ %i.dh, %.lr.ph111.new ], [ %.unr163, %.prol.loopexit160 ]
  %i.cg = phi i32 [ %i.dc, %.lr.ph111.new ], [ %.unr164, %.prol.loopexit160 ]
  %.073109 = phi i64 [ %i.dk, %.lr.ph111.new ], [ %.073109.unr, %.prol.loopexit160 ] ; 4 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.bh, i64 %.073109 ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !20
  %i.cl = sext i32 %i.cf to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ci, i64 %i.cl
  store i32 %i.ck, ptr %i.cm, align 4, !tbaa !20
  %i.cn = load i32, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.bj, i64 %.073109 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !20 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cp, i64 %i.ct
  store double %i.cr, ptr %i.cu, align 8, !tbaa !30
  %i.cv = add nsw i64 %.073109, -1                ; 3 uses
  %i.cw = sext i32 %i.cn to i64
  %i.cx = getelementptr [4 x i8], ptr %i.bh, i64 %i.cv ; 2 uses
  %i.cy = getelementptr [4 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !20
  %i.da = sext i32 %i.cs to i64
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %i.da
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !20
  %i.dc = load i32, ptr %i.bb, align 4, !tbaa !20 ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [8 x i8], ptr %i.bj, i64 %i.cv ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load double, ptr %i.df, align 8, !tbaa !30
  %i.dh = load i32, ptr %i.bi, align 4, !tbaa !20 ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [8 x i8], ptr %i.de, i64 %i.di
  store double %i.dg, ptr %i.dj, align 8, !tbaa !30
  %i.dk = add nsw i64 %.073109, -2
  %.not140.1 = icmp eq i64 %i.cv, 0
  br i1 %.not140.1, label %._crit_edge112, label %.lr.ph111.new, !llvm.loop !202

._crit_edge118:                                   ; preds = %._crit_edge112
  %i.dl = add nsw i64 %i.v, -1                    ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !20
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dl
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !20
  %i.dr = add nsw i32 %i.dq, %i.dn
  %i.ds = load ptr, ptr %1, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dl
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !20
  %i.dv = add nsw i32 %i.dr, %i.du                ; 2 uses
  store i32 %i.dv, ptr %i.w, align 4, !tbaa !20
  br label %._crit_edge118._crit_edge

._crit_edge118._crit_edge:                        ; preds = %._crit_edge107, %._crit_edge118
  %i.dw = phi i32 [ %i.dv, %._crit_edge118 ], [ %i.y, %._crit_edge107 ]
  %i.dx = sext i32 %i.dw to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %i.dx, double noundef 0.000000e+00)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.dy = add i64 %i.f, 4
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dy) #19 ; 7 uses
  %.not = icmp eq ptr %i.dz, null
  br i1 %.not, label %bb.g, label %.preheader92

.preheader92:                                     ; preds = %bb.f
  %i.ea = icmp sgt i64 %i.e, 0
  br i1 %i.ea, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader92
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !55    ; 3 uses
  %.pre = load i32, ptr %i.ec, align 4, !tbaa !20 ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.ee = icmp eq i64 %i.e, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.e, 9223372036854775806
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ef = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre, %.lr.ph ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.07194.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %.07293.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194.epil.init
  store i32 %.07293.epil.init, ptr %i.eg, align 4, !tbaa !20
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %.07194.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !20
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194.epil.init
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !20 ; 2 uses
  %i.em = add i32 %.epil.init, %i.el
  %i.en = sub i32 %i.ej, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194.epil.init
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !20
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %i.ep, i32 %i.en)
  %i.eq = add i32 %i.el, %.07293.epil.init
  %i.er = add i32 %i.eq, %.sroa.speculated.epil
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader92
  %.072.lcssa = phi i32 [ 0, %.preheader92 ], [ %i.fy, %._crit_edge.loopexit.unr-lcssa ], [ %i.er, %.epil.preheader ] ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.e
  store i32 %.072.lcssa, ptr %i.es, align 4, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eu = sext i32 %.072.lcssa to i64
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 noundef %i.eu, double noundef 0.000000e+00)
  %i.ev = load i64, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 2 uses
  br i1 %i.ew, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.new
  %i.fa = phi i32 [ %.pre, %.lr.ph.new ], [ %i.fq, %bb.h ]
  %.07194 = phi i64 [ 0, %.lr.ph.new ], [ %i.fo, %bb.h ] ; 5 uses
  %.07293 = phi i32 [ 0, %.lr.ph.new ], [ %i.fy, %bb.h ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.h ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.07194
  store i32 %.07293, ptr %i.fb, align 4, !tbaa !20
  %i.fc = or disjoint i64 %.07194, 1              ; 4 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !20 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.07194
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !20 ; 2 uses
  %i.fh = add i32 %i.fa, %i.fg
  %i.fi = sub i32 %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.07194
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !20
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fi)
  %i.fl = add i32 %i.fg, %.07293
  %i.fm = add i32 %i.fl, %.sroa.speculated        ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.fc
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !20
  %i.fo = add nuw nsw i64 %.07194, 2              ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !20 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fc
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !20 ; 2 uses
  %i.ft = add i32 %i.fe, %i.fs
  %i.fu = sub i32 %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fc
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !20
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fu)
  %i.fx = add i32 %i.fs, %i.fm
  %i.fy = add i32 %i.fx, %.sroa.speculated.1      ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !203

._crit_edge102:                                   ; preds = %.loopexit, %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dz, ptr %i.fz, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.ey) #20
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph101, %.loopexit
  %.06999.in = phi i64 [ %i.ev, %.lr.ph101 ], [ %.06999, %.loopexit ] ; 2 uses
  %.06999 = add nsw i64 %.06999.in, -1            ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06999
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !20 ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.06999 ; 4 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !20 ; 3 uses
  %i.ge = icmp sgt i32 %i.gb, %i.gd
  br i1 %i.ge, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %.06999
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !20 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph97, label %.loopexit

.lr.ph97:                                         ; preds = %bb.j
  %i.gj = add nsw i32 %i.gh, -1                   ; 2 uses
  %i.gk = zext i32 %i.gj to i64                   ; 4 uses
  %i.gl = load ptr, ptr %i.ez, align 8, !tbaa !47 ; 3 uses
  %i.gm = load ptr, ptr %i.et, align 8, !tbaa !57 ; 3 uses
  %i.gn = sext i32 %i.gb to i64                   ; 6 uses
  %i.go = and i32 %i.gh, 1
  %lcmp.mod150.not = icmp eq i32 %i.go, 0
  br i1 %lcmp.mod150.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph97
  %i.gp = sext i32 %i.gd to i64
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gk ; 2 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.gp
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !20
  %i.gt = getelementptr [4 x i8], ptr %i.gq, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !20
  %i.gu = load i32, ptr %i.gc, align 4, !tbaa !20 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr [8 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !30
  %i.gz = getelementptr [8 x i8], ptr %i.gw, i64 %i.gn
  store double %i.gy, ptr %i.gz, align 8, !tbaa !30
  %i.ha = add nsw i64 %i.gk, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph97
  %.unr151 = phi i32 [ %i.gd, %.lr.ph97 ], [ %i.gu, %.prol.loopexit.unr-lcssa ]
  %.095.unr = phi i64 [ %i.gk, %.lr.ph97 ], [ %i.ha, %.prol.loopexit.unr-lcssa ]
  %i.hb = icmp eq i32 %i.gj, 0
  br i1 %i.hb, label %.loopexit, label %.lr.ph97.new

.lr.ph97.new:                                     ; preds = %.prol.loopexit, %.lr.ph97.new
  %i.hc = phi i32 [ %i.hu, %.lr.ph97.new ], [ %.unr151, %.prol.loopexit ]
  %.095 = phi i64 [ %i.ia, %.lr.ph97.new ], [ %.095.unr, %.prol.loopexit ] ; 4 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr [4 x i8], ptr %i.gl, i64 %.095 ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.hd
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !20
  %i.hh = getelementptr [4 x i8], ptr %i.he, i64 %i.gn
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !20
  %i.hi = load i32, ptr %i.gc, align 4, !tbaa !20 ; 2 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr [8 x i8], ptr %i.gm, i64 %.095 ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hk, i64 %i.hj
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !30
  %i.hn = getelementptr [8 x i8], ptr %i.hk, i64 %i.gn
  store double %i.hm, ptr %i.hn, align 8, !tbaa !30
  %i.ho = add nsw i64 %.095, -1                   ; 3 uses
  %i.hp = sext i32 %i.hi to i64
  %i.hq = getelementptr [4 x i8], ptr %i.gl, i64 %i.ho ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !20
  %i.ht = getelementptr [4 x i8], ptr %i.hq, i64 %i.gn
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !20
  %i.hu = load i32, ptr %i.gc, align 4, !tbaa !20 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr [8 x i8], ptr %i.gm, i64 %i.ho ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !30
  %i.hz = getelementptr [8 x i8], ptr %i.hw, i64 %i.gn
  store double %i.hy, ptr %i.hz, align 8, !tbaa !30
  %i.ia = add nsw i64 %.095, -2
  %.not139.1 = icmp eq i64 %i.ho, 0
  br i1 %.not139.1, label %.loopexit, label %.lr.ph97.new, !llvm.loop !204

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph97.new, %bb.j, %bb.i
  %i.ib = icmp samesign ugt i64 %.06999.in, 1
  br i1 %i.ib, label %bb.i, label %._crit_edge102, !llvm.loop !205

bb.k:                                             ; preds = %._crit_edge102, %._crit_edge118._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, double noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !43
  %i.c = icmp slt i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

bb.b:                                             ; preds = %bb.a
  %i.d = sitofp i64 %1 to double
  %i.e = fmul double %2, %i.d
  %i.f = fptosi double %i.e to i64
  %i.g = add nsw i64 %1, %i.f
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.g, i64 2147483647) ; 7 uses
  %i.h = icmp slt i64 %.sroa.speculated, %1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #22
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !45  ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #23
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !46
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !43
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #23
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #23
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #23
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !12, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!14, !12, i64 0}
!16 = !{!14, !13, i64 8}
!17 = !{!14, !13, i64 16}
!18 = !{!7, !7, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!8, !8, i64 0}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"vtable pointer", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 double", !11, i64 0}
!26 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !25, i64 0, !13, i64 8, !13, i64 16}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !13, i64 8}
!29 = !{!"double", !7, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 8, !30}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !33, i64 0}
!35 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !34, i64 0}
!36 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !25, i64 0, !12, i64 8, !13, i64 16, !13, i64 24}
!37 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !35, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !12, i64 32, !36, i64 40}
!38 = !{!37, !13, i64 16}
!39 = !{!36, !13, i64 16}
!40 = !{!37, !13, i64 8}
!41 = !{!37, !12, i64 24}
!42 = !{!37, !12, i64 32}
!43 = !{!36, !13, i64 24}
!44 = !{!13, !13, i64 0}
!45 = !{!25, !25, i64 0}
!46 = !{!12, !12, i64 0}
!47 = !{!36, !12, i64 8}
!48 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi1EiEEEE", !33, i64 0}
!49 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEE", !48, i64 0}
!50 = !{!"_ZTSN5Eigen12SparseMatrixIdLi1EiEE", !49, i64 0, !13, i64 8, !13, i64 16, !12, i64 24, !12, i64 32, !36, i64 40}
!51 = !{!50, !13, i64 16}
!52 = !{!50, !12, i64 24}
!53 = !{!50, !13, i64 8}
!54 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !12, i64 0, !13, i64 8}
!55 = !{!54, !12, i64 0}
!56 = !{!50, !12, i64 32}
!57 = !{!36, !25, i64 0}
!58 = distinct !{!58, !19, !21, !22}
!59 = distinct !{!59, !19, !22, !21}
!60 = distinct !{!60, !19, !21, !22}
!61 = distinct !{!61, !19, !22, !21}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!64 = distinct !{!64, !63, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, !63, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!66 = distinct !{!66, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!67 = distinct !{!67, !66, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!68 = distinct !{!68, !66, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !70, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!74 = distinct !{!74, !73, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!75 = distinct !{!75, !73, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !19}
!78 = !{!65, !64}
!79 = !{!68, !67}
!80 = !{!72, !71}
!81 = !{!75, !74}
!82 = distinct !{!82, !19, !21, !22}
!83 = distinct !{!83, !19, !22, !21}
!84 = distinct !{!84, !19, !21, !22}
!85 = distinct !{!85, !19, !22, !21}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!88 = distinct !{!88, !87, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!89 = distinct !{!89, !87, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!90 = distinct !{!90, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!91 = distinct !{!91, !90, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!92 = distinct !{!92, !90, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!96 = distinct !{!96, !94, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!97 = distinct !{!97, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!98 = distinct !{!98, !97, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!99 = distinct !{!99, !97, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!100 = distinct !{!100, !32}
!101 = distinct !{!101, !19}
!102 = !{!89, !88}
!103 = !{!92, !91}
!104 = !{!96, !95}
!105 = !{!99, !98}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19, !21, !22}
!108 = distinct !{!108, !19, !22, !21}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!111 = distinct !{!111, !110, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!112 = distinct !{!112, !110, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!113 = distinct !{!113, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!114 = distinct !{!114, !113, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!115 = distinct !{!115, !113, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!116 = distinct !{!116, !32}
!117 = distinct !{!117, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!118 = distinct !{!118, !117, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!119 = distinct !{!119, !117, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!120 = distinct !{!120, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!121 = distinct !{!121, !120, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!122 = distinct !{!122, !120, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!123 = distinct !{!123, !32}
!124 = distinct !{!124, !19}
!125 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi4ELi0EEE", !12, i64 0, !13, i64 8}
!126 = !{!125, !12, i64 0}
!127 = !{!125, !13, i64 8}
!128 = !{!112, !111}
!129 = !{!115, !114}
!130 = !{!119, !118}
!131 = !{!122, !121}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19, !21, !22}
!134 = distinct !{!134, !19, !22, !21}
!135 = distinct !{!135, !19, !21, !22}
!136 = distinct !{!136, !19, !22, !21}
!137 = distinct !{!137, !19}
!138 = distinct !{!138, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!139 = distinct !{!139, !138, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!140 = distinct !{!140, !138, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!141 = distinct !{!141, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!142 = distinct !{!142, !141, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!143 = distinct !{!143, !141, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !32}
!145 = distinct !{!145, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!146 = distinct !{!146, !145, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!147 = distinct !{!147, !145, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!148 = distinct !{!148, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!149 = distinct !{!149, !148, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!150 = distinct !{!150, !148, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !32}
!152 = distinct !{!152, !19}
!153 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi3ELi0EEE", !12, i64 0, !13, i64 8}
!154 = !{!153, !12, i64 0}
!155 = !{!153, !13, i64 8}
!156 = !{!140, !139}
!157 = !{!143, !142}
!158 = !{!147, !146}
!159 = !{!150, !149}
!160 = distinct !{!160, !19, !21, !22}
!161 = distinct !{!161, !19, !22, !21}
!162 = distinct !{!162, !19, !21, !22}
!163 = distinct !{!163, !19, !22, !21}
!164 = distinct !{!164, !19}
!165 = distinct !{!165, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!166 = distinct !{!166, !165, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!167 = distinct !{!167, !165, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!168 = distinct !{!168, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!169 = distinct !{!169, !168, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!170 = distinct !{!170, !168, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!171 = distinct !{!171, !32}
!172 = distinct !{!172, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!173 = distinct !{!173, !172, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!174 = distinct !{!174, !172, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!175 = distinct !{!175, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_"}
!176 = distinct !{!176, !175, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!177 = distinct !{!177, !175, !"_ZSt19__relocate_object_aIN5Eigen7TripletIdiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!178 = distinct !{!178, !32}
!179 = distinct !{!179, !19}
!180 = !{!167, !166}
!181 = !{!170, !169}
!182 = !{!174, !173}
!183 = !{!177, !176}
!184 = distinct !{!184, !19}
!185 = distinct !{!185, !19}
!186 = !{!48, !33, i64 0}
!187 = !{!"p1 _ZTSN5Eigen7TripletIdiEE", !11, i64 0}
!188 = !{!187, !187, i64 0}
!189 = !{!54, !13, i64 8}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, !32}
!193 = distinct !{!193, !19}
!194 = distinct !{!194, !19}
!195 = distinct !{!195, !19}
!196 = distinct !{!196, !19}
!197 = distinct !{!197, !19}
!198 = !{!34, !33, i64 0}
!199 = !{!11, !11, i64 0}
!200 = distinct !{!200, !19}
!201 = distinct !{!201, !19}
!202 = distinct !{!202, !19}
!203 = distinct !{!203, !19}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !19}
end_hunk_0
