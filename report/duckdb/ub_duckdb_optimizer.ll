Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer?download=true
inline.NumInlined: 25578
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6duckdb25CompressedMaterialization16TryCompressChildERNS_29CompressedMaterializationInfoERKNS_11CMChildInfoERNS_6vectorINS_10unique_ptrINS_18CompressExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE:bb.a
  %index.next236 = add nuw i64 %index231, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.fc, label %middle.block237, label %vector.body230, !llvm.loop !2025

middle.block237:                                  ; preds = %vector.body230
  %cmp.n238 = icmp eq i64 %i.er, %n.vec229
  br i1 %cmp.n238, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i58, label %.lr.ph.i.i.i.i.i.i54.preheader242

.lr.ph.i.i.i.i.i.i54.preheader242:                ; preds = %vector.memcheck218, %.lr.ph.i.i.i.i.i.i54.preheader, %middle.block237
  %.012.i.i.i.i.i.i55.ph = phi ptr [ %i.em, %vector.memcheck218 ], [ %i.em, %.lr.ph.i.i.i.i.i.i54.preheader ], [ %i.ew, %middle.block237 ]
  %.0911.i.i.i.i.i.i56.ph = phi ptr [ %i.eb, %vector.memcheck218 ], [ %i.eb, %.lr.ph.i.i.i.i.i.i54.preheader ], [ %i.ex, %middle.block237 ]
  br label %.lr.ph.i.i.i.i.i.i54

.lr.ph.i.i.i.i.i.i54:                             ; preds = %.lr.ph.i.i.i.i.i.i54.preheader242, %.lr.ph.i.i.i.i.i.i54
  %.012.i.i.i.i.i.i55 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i54 ], [ %.012.i.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i.i54.preheader242 ] ; 2 uses
  %.0911.i.i.i.i.i.i56 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i.i54.preheader242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  %i.fd = load i64, ptr %.0911.i.i.i.i.i.i56, align 8, !tbaa !667, !alias.scope !2036, !noalias !2035
  store i64 %i.fd, ptr %.012.i.i.i.i.i.i55, align 8, !tbaa !667, !alias.scope !2035, !noalias !2036
  store ptr null, ptr %.0911.i.i.i.i.i.i56, align 8, !tbaa !667, !alias.scope !2036, !noalias !2035
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i56, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i57 = icmp eq ptr %i.fe, %i.dy
  br i1 %.not.i.i.i.i.i.i57, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i58, label %.lr.ph.i.i.i.i.i.i54, !llvm.loop !2026

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i58: ; preds = %.lr.ph.i.i.i.i.i.i54, %middle.block237, %.noexc63
  %.0.lcssa.i.i.i.i.i.i59 = phi ptr [ %i.em, %.noexc63 ], [ %i.ew, %middle.block237 ], [ %i.ff, %.lr.ph.i.i.i.i.i.i54 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i59, i64 8
  %.not.i23.i.i60 = icmp eq ptr %i.eb, null
  br i1 %.not.i23.i.i60, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit64, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i58
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #34
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit64

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit64: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i58, %bb.ac
  store ptr %i.em, ptr %3, align 8, !tbaa !664
  store ptr %i.fg, ptr %i.h, align 8, !tbaa !665
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.fh, ptr %i.i, align 8, !tbaa !663
  br label %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit64, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit64.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.fi = load ptr, ptr %10, align 8, !tbaa !648  ; 3 uses
  %.not.i67 = icmp eq ptr %i.fi, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.fi) #33
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #34
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.fj = load ptr, ptr %9, align 8, !tbaa !670   ; 3 uses
  %.not.i68 = icmp eq ptr %i.fj, null
  br i1 %.not.i68, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !213
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(112) %i.fj) #33, !inline_history !38
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.ad:                                            ; preds = %bb.h
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.m
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.af:                                            ; preds = %bb.v, %.loopexit89
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ag:                                            ; preds = %bb.w
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.loopexit92:                                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i50
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit92
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit92 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #33
  br label %.body47

.body47:                                          ; preds = %bb.ag, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit7.i, %bb.ah
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.ah ], [ %i.fq, %bb.ag ], [ %i.dt, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit7.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call void @_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  br label %bb.ai

bb.ai:                                            ; preds = %.body47, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body47 ], [ %i.fp, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ai ], [ %i.fo, %bb.ae ] ; 2 uses
  %i.fr = load ptr, ptr %9, align 8, !tbaa !670   ; 3 uses
  %.not.i69 = icmp eq ptr %i.fr, null
  br i1 %.not.i69, label %.body, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i70

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i70: ; preds = %bb.aj
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !213
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(112) %i.fr) #33, !inline_history !38
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i70, %bb.aj, %bb.ad, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.i, %bb.l ], [ %i.fn, %bb.ad ], [ %.pn.pn.pn, %bb.aj ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.am

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.d, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb25CompressedMaterialization17UpdateBindingInfoERNS_29CompressedMaterializationInfoERKNS_13ColumnBindingEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext %i.p)
          to label %bb.ak unwind label %.loopexit93

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18CompressExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.fv = or i1 %.034124, %i.p                    ; 2 uses
  %i.fw = load ptr, ptr %8, align 8, !tbaa !667   ; 4 uses
  %.not.i72 = icmp eq ptr %i.fw, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit79, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !648 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i73, label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i75, label %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i74

_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i74: ; preds = %bb.al
  call void @_ZN6duckdb14BaseStatisticsD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.fy) #33
  call void @_ZdlPv(ptr noundef nonnull %i.fy) #34
  br label %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i75

_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i75: ; preds = %_ZNKSt14default_deleteIN6duckdb14BaseStatisticsEEclEPS1_.exit.i.i.i.i74, %bb.al
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !336 ; 3 uses
  %.not.i1.i.i.i76 = icmp eq ptr %i.fz, null
  br i1 %.not.i1.i.i.i76, label %_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i78, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i77

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i77: ; preds = %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i75
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !213
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(88) %i.fz) #33, !inline_history !2027
  br label %_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i78

_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i78: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i77, %_ZNSt10unique_ptrIN6duckdb14BaseStatisticsESt14default_deleteIS1_EED2Ev.exit.i.i.i75
  call void @_ZdlPv(ptr noundef nonnull %i.fw) #34
  br label %_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit79

_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev.exit79: ; preds = %bb.ak, %_ZNKSt14default_deleteIN6duckdb18CompressExpressionEEclEPS1_.exit.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.gd = add nuw i64 %.033125, 1                 ; 2 uses
  %i.ge = load ptr, ptr %i.b, align 8, !tbaa !268
  %i.gf = load ptr, ptr %2, align 8, !tbaa !219
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 4
  %i.gk = icmp ult i64 %i.gd, %i.gj
  br i1 %i.gk, label %bb.b, label %._crit_edge, !llvm.loop !2028

bb.am:                                            ; preds = %.loopexit93, %.loopexit.split-lp94, %.body
  %.pn41 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body ], [ %lpad.loopexit95, %.loopexit93 ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp94 ]
  call void @_ZNSt10unique_ptrIN6duckdb18CompressExpressionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  resume { ptr, i32 } %.pn41

.critedge:                                        ; preds = %bb.a, %._crit_edge
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.080.0126 = load ptr, ptr %i.gl, align 8, !tbaa !313 ; 2 uses
  %.not127 = icmp eq ptr %.sroa.080.0126, null
  br i1 %.not127, label %.loopexit, label %.lr.ph131

.lr.ph131:                                        ; preds = %.critedge, %.lr.ph131
  %.sroa.080.0129 = phi ptr [ %.sroa.080.0, %.lr.ph131 ], [ %.sroa.080.0126, %.critedge ] ; 2 uses
  %.135128 = phi i8 [ %i.gp, %.lr.ph131 ], [ 0, %.critedge ]
  %i.gm = trunc nuw i8 %.135128 to i1
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.080.0129, i64 64
  %i.go = load i8, ptr %i.gn, align 8, !range !265
  %i.gp = select i1 %i.gm, i8 1, i8 %i.go         ; 2 uses
  %.sroa.080.0 = load ptr, ptr %.sroa.080.0129, align 8, !tbaa !313 ; 2 uses
  %.not = icmp eq ptr %.sroa.080.0, null
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph131

.loopexit.loopexit:                               ; preds = %.lr.ph131
  %12 = trunc nuw i8 %i.gp to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.critedge, %._crit_edge
  %.236 = phi i1 [ true, %._crit_edge ], [ false, %.critedge ], [ %12, %.loopexit.loopexit ]
  ret i1 %.236
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !363
  %i.e = load ptr, ptr %0, align 8, !tbaa !306    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !270
  store i64 %i.i, ptr %i.b, align 8, !tbaa !270
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !303

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !300    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25CompressedMaterialization24CreateCompressProjectionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEENS_6vectorINS1_INS_18CompressExpressionES3_IS8_ELb1EEELb1ESaISA_EEERNS_29CompressedMaterializationInfoERNS_11CMChildInfoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 8 dereferenceable(96) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::vector.74", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::vector.74", align 8 ; 14 uses
  %8 = alloca %"class.duckdb::unique_ptr.330", align 8 ; 13 uses
  %9 = alloca %"class.duckdb::vector", align 16   ; 8 uses
  %10 = alloca %"class.duckdb::ColumnBindingReplacer", align 8 ; 13 uses
  %11 = alloca %"struct.duckdb::CMBindingInfo", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !665  ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !664    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #35
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.not229 = icmp eq ptr %i.b, %i.c
  br i1 %.not229, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.d ; 4 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre178.pre = load ptr, ptr %i.a, align 8, !tbaa !661
  %.pre.pre = load ptr, ptr %2, align 8, !tbaa !661
  store ptr %i.i, ptr %7, align 8, !tbaa !453
  store ptr %i.i, ptr %i.j, align 8, !tbaa !454
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !457
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.l = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ null, %bb.c ]
  %i.m = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ null, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %.pre178.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %.not158 = icmp eq ptr %i.o, %i.n
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.q = phi ptr [ %i.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.bl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !671, !nonnull !266, !align !323
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !458, !nonnull !266, !align !323
  %i.u = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %i.t)
          to label %bb.k unwind label %bb.t

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.w = phi ptr [ %i.m, %.lr.ph ], [ %i.bj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ] ; 11 uses
  %i.x = phi ptr [ %i.l, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ] ; 5 uses
  %i.y = phi ptr [ %i.m, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ] ; 3 uses
  %.sroa.0145.0159 = phi ptr [ %i.o, %.lr.ph ], [ %i.bm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ] ; 2 uses
  %i.z = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CompressExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0145.0159)
          to label %bb.f unwind label %.loopexit  ; 4 uses

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !336
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !336
  store ptr null, ptr %i.z, align 8, !tbaa !336
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !454
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.ad = ptrtoint ptr %i.w to i64                ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
end_hunk_0
begin_hunk_1_@_ZN6duckdb15JoinElimination16TryEliminateJoinEv:bb.a
  br i1 %i.dy, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEEixERSC_.exit
  invoke void @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.dw, ptr noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit unwind label %bb.ag

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit: ; preds = %_ZNSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEEixERSC_.exit, %bb.af
  %.sroa.0137.0 = load ptr, ptr %.sroa.0137.0186, align 8, !tbaa !313 ; 2 uses
  %.not168.a = icmp eq ptr %.sroa.0137.0, null
  br i1 %.not168.a, label %.loopexit, label %bb.ae

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ah:                                            ; preds = %.critedge87
  %i.ea = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15JoinEliminationESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %.sroa.0133.0179 = load ptr, ptr %i.eb, align 8, !tbaa !313 ; 2 uses
  %.not167180 = icmp eq ptr %.sroa.0133.0179, null
  br i1 %.not167180, label %.loopexit, label %.lr.ph183

.lr.ph183:                                        ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ak:                                            ; preds = %.lr.ph183, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit113
  %.sroa.0133.0181 = phi ptr [ %.sroa.0133.0179, %.lr.ph183 ], [ %.sroa.0133.0, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit113 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0133.0181, i64 8
  %i.ef = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmSt13unordered_setIN6duckdb13ColumnBindingENS4_25ColumnBindingHashFunctionENS4_21ColumnBindingEqualityESaIS5_EEESaISA_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %_ZNSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEEixERSC_.exit111 unwind label %bb.am ; 2 uses

_ZNSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEEixERSC_.exit111: ; preds = %bb.ak
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0133.0181, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ef
  br i1 %i.eh, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit113, label %bb.al

bb.al:                                            ; preds = %_ZNSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEEixERSC_.exit111
  invoke void @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ef, ptr noundef nonnull align 8 dereferenceable(56) %i.eg)
          to label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit113 unwind label %bb.am

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit113: ; preds = %_ZNSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEEixERSC_.exit111, %bb.al
  %.sroa.0133.0 = load ptr, ptr %.sroa.0133.0181, align 8, !tbaa !313 ; 2 uses
  %.not167 = icmp eq ptr %.sroa.0133.0, null
  br i1 %.not167, label %.loopexit, label %bb.ak

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit:                                        ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit113, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EEaSERKS5_.exit, %bb.ai, %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !1230
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit
  br i1 %.051149, label %.thread162, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 184
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !334 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bj, i64 192
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !334 ; 2 uses
  %.not169189 = icmp eq ptr %i.en, %i.ep
  br i1 %.not169189, label %._crit_edge193, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.ao, %bb.av
  %.sroa.0129.0190 = phi ptr [ %i.fd, %bb.av ], [ %i.en, %bb.ao ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0129.0190, i64 16
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !346
  %.not = icmp eq i8 %i.er, 25
  br i1 %.not, label %bb.ap, label %.thread157

bb.ap:                                            ; preds = %.lr.ph192
  %i.es = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0129.0190)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !809
  %.not72 = icmp eq i8 %i.eu, -28
  br i1 %.not72, label %bb.ar, label %.thread157

bb.ar:                                            ; preds = %bb.aq
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0129.0190, i64 8 ; 2 uses
  %i.ew = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !809
  %.not73 = icmp eq i8 %i.ey, -28
  br i1 %.not73, label %.invoke230, label %.thread157

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.invoke230:                                       ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %.sroa.0129.0190. = select i1 %i.by, ptr %.sroa.0129.0190, ptr %i.ev
  %i.fa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0129.0190.)
          to label %.invoke unwind label %bb.aw

.invoke:                                          ; preds = %.invoke230
  %i.fb = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundColumnRefExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.fa)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %.invoke
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i64 16, i1 false), !tbaa.struct !271
  invoke void @_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0129.0190, i64 24 ; 2 uses
  %.not169 = icmp eq ptr %i.fd, %i.ep
  br i1 %.not169, label %._crit_edge193, label %.lr.ph192

bb.aw:                                            ; preds = %.invoke230, %.invoke, %bb.au
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.az

._crit_edge193:                                   ; preds = %bb.av, %bb.ao
  %i.ff = invoke noundef zeroext i1 @_ZN6duckdb15JoinElimination20ContainDistinctGroupERNS_6vectorINS_13ColumnBindingELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %.thread157 unwind label %bb.ax

bb.ax:                                            ; preds = %._crit_edge193
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.thread157:                                       ; preds = %bb.as, %bb.aq, %.lr.ph192, %._crit_edge193
  %.4 = phi i1 [ %i.ff, %._crit_edge193 ], [ false, %.lr.ph192 ], [ false, %bb.aq ], [ false, %bb.as ]
  %i.fh = load ptr, ptr %7, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %.thread157
  call void @_ZdlPv(ptr noundef nonnull %i.fh) #34
  br label %bb.bb

bb.az:                                            ; preds = %bb.at, %bb.aw, %bb.ax
  %.pn77 = phi { ptr, i32 } [ %i.fg, %bb.ax ], [ %i.fe, %bb.aw ], [ %i.ez, %bb.at ]
  %i.fi = load ptr, ptr %7, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i114 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i114, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit115, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdlPv(ptr noundef nonnull %i.fi) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit115

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit115: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.br

bb.bb:                                            ; preds = %bb.ay, %.thread157
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.4, label %.thread162, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 noundef %.049151)
          to label %bb.bd unwind label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.fk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
          to label %bb.be unwind label %bb.bi     ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !213
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  invoke void %i.fn(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %9, ptr noundef nonnull align 8 dereferenceable(97) %i.fk)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fo = invoke noundef zeroext i1 @_ZN6duckdb15JoinElimination20ContainDistinctGroupERNS_6vectorINS_13ColumnBindingELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.fp = load ptr, ptr %9, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i116 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i116, label %10, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdlPv(ptr noundef nonnull %i.fp) #34
  br label %10

bb.bi:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit119.a

bb.bj:                                            ; preds = %bb.bf
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %9, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit119.a, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef nonnull %i.fs) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit119.a

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit119.a: ; preds = %bb.bk, %bb.bj, %bb.bi
  %.pn79 = phi { ptr, i32 } [ %i.fq, %bb.bi ], [ %i.fr, %bb.bj ], [ %i.fr, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.br

10:                                               ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.fo, label %.thread162, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

.thread162:                                       ; preds = %bb.an, %bb.bb, %10
  %i.ft = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %.thread162
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i64 noundef %.049151)
          to label %bb.bm unwind label %bb.bp     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.fw = load ptr, ptr %3, align 8, !tbaa !368
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i64, ptr %i.am, align 8, !tbaa !1211
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fx, i64 noundef %i.fy)
          to label %bb.bo unwind label %bb.bp     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.ga = load ptr, ptr %i.fv, align 8, !tbaa !305
  store ptr null, ptr %i.fv, align 8, !tbaa !305
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !305 ; 3 uses
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !305
  %.not.i.i.i.i.i122 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i122, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i123

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i123: ; preds = %bb.bo
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !213
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.gb) #33, !inline_history !12
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit

bb.bp:                                            ; preds = %bb.bm, %bb.bn, %bb.bl, %.thread162
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit: ; preds = %bb.y, %bb.z, %bb.w, %10, %bb.bo, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i123, %.loopexit
  %i.gg = load i64, ptr %i.af, align 8, !tbaa !305
  store i64 %i.gg, ptr %0, align 8, !tbaa !305
  store ptr null, ptr %i.af, align 8, !tbaa !305
  %i.gh = load ptr, ptr %6, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit126, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit
  call void @_ZdlPv(ptr noundef nonnull %i.gh) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit126

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit126: ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEE4findERKm.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bt

bb.br:                                            ; preds = %bb.aj, %bb.am, %bb.ad, %bb.ag, %bb.bp, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit119.a, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit115
  %.pn81.pn = phi { ptr, i32 } [ %i.ed, %bb.aj ], [ %i.gf, %bb.bp ], [ %.pn79, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit119.a ], [ %.pn77, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit115 ], [ %i.du, %bb.ad ], [ %i.dz, %bb.ag ], [ %i.ei, %bb.am ]
  %i.gi = load ptr, ptr %6, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit128, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdlPv(ptr noundef nonnull %i.gi) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit128

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit128: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.bu

bb.bt:                                            ; preds = %bb.r, %bb.t, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit126, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.bv

bb.bu:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit128, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit109, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit106
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit128 ], [ %i.br, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit109 ], [ %i.bm, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt, %bb.g, %._crit_edge
  ret void

bb.bw:                                            ; preds = %bb.bu, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit91
  %.pn81.pn.pn.pn = phi { ptr, i32 } [ %.pn81.pn.pn, %bb.bu ], [ %i.aa, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit91 ]
  resume { ptr, i32 } %.pn81.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15JoinEliminationESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1233
  %i.e = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !270
  store i64 %i.i, ptr %i.b, align 8, !tbaa !270
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_15JoinEliminationESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !303

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.60, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !300    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_15JoinEliminationESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !268  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !269
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !271
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !268
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !271
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !271, !alias.scope !3586
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorIN6duckdb13ColumnBindingESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !219
  store ptr %i.v, ptr %i.a, align 8, !tbaa !268
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !269
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
end_hunk_1
