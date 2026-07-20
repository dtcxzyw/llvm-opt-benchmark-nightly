inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core:bb.a
          to label %.thread50 unwind label %bb.ai

bb.ah:                                            ; preds = %bb.af
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %.thread53.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.cj, ptr %i.g, align 8
  store ptr %i.ck, ptr %i.bv, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.at unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40 unwind label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cj, ptr %i.a, align 8, !noalias !1891
  store ptr %i.ck, ptr %i.bw, align 8, !noalias !1891
  %i.cr = load i64, ptr %i.bn, align 8, !alias.scope !1888, !noalias !1893, !noundef !27 ; 3 uses
  %i.cs = load i64, ptr %i.i, align 8, !range !74, !alias.scope !1888, !noalias !1893, !noundef !27
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.as unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !1894
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.aq, label %.thread50

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #57
          to label %.thread50 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.as:                                            ; preds = %bb.ao, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit40
  %i.cy = load ptr, ptr %i.bm, align 8, !alias.scope !1888, !noalias !1893, !nonnull !27, !noundef !27
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cr ; 2 uses
  store ptr %i.cj, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.ck, ptr %i.da, align 8
  %i.db = add i64 %i.cr, 1
  store i64 %i.db, ptr %i.bn, align 8, !alias.scope !1888, !noalias !1893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %exitcond.not = icmp eq i64 %i.bz, %i.ba
  br i1 %exitcond.not, label %._crit_edge, label %bb.v

bb.at:                                            ; preds = %bb.ak, %bb.an
  %eh.lpad-body39.ph = phi { ptr, i32 } [ %i.cq, %bb.an ], [ %i.co, %bb.ak ] ; 2 uses
  %i.dc = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !1899
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.au, label %.thread50

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #57
          to label %.thread50 unwind label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread50, %bb.ad, %.body45
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ax unwind label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body45 unwind label %bb.ay

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.ay:                                            ; preds = %bb.aw
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.p

.thread50:                                        ; preds = %.thread53.loopexit, %.thread53.loopexit.split-lp, %bb.at, %bb.au, %bb.aq, %bb.ap, %bb.ad, %bb.ag
  %.pn49 = phi { ptr, i32 } [ %i.cm, %bb.ag ], [ %eh.lpad-body39.ph, %bb.at ], [ %i.ch, %bb.ad ], [ %i.cu, %bb.aq ], [ %i.cu, %bb.ap ], [ %eh.lpad-body39.ph, %bb.au ], [ %lpad.loopexit, %.thread53.loopexit ], [ %lpad.loopexit.split-lp, %.thread53.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #59
          to label %.body45 unwind label %bb.av

bb.az:                                            ; preds = %bb.t
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !27
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.r, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val35 = load i64, ptr %i.s, align 8, !noundef !27 ; 4 uses
  %i.t = icmp eq i64 %.val35, 0
  br i1 %i.t, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %.val35, 3                  ; 3 uses
  %i.u = icmp ult i64 %.val35, 4
  br i1 %i.u, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.val35, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ah, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ag, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.04.0.i
  %i.w = getelementptr i8, ptr %i.v, i64 32
  %.val.i = load i64, ptr %i.w, align 8, !noundef !27
  %i.x = add i64 %.val.i, %.sroa.02.0.i
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.04.0.i
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %.val.i.1 = load i64, ptr %i.z, align 8, !noundef !27
  %i.aa = add i64 %.val.i.1, %i.x
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.04.0.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 112
  %.val.i.2 = load i64, ptr %i.ac, align 8, !noundef !27
  %i.ad = add i64 %.val.i.2, %i.aa
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.04.0.i
  %i.af = getelementptr i8, ptr %i.ae, i64 152
  %.val.i.3 = load i64, ptr %i.af, align 8, !noundef !27
  %i.ag = add i64 %.val.i.3, %i.ad                ; 3 uses
  %i.ah = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ah, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ag, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.al, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.ak, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.04.0.i.epil
  %i.aj = getelementptr i8, ptr %i.ai, i64 32
  %.val.i.epil = load i64, ptr %i.aj, align 8, !noundef !27
  %i.ak = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.al = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil, !llvm.loop !1904

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ %i.ag, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ], [ %i.ak, %.preheader.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i8 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.m, align 8
  store i64 %.sroa.0.0.i, ptr %i.an, align 8
  %i.ao = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val36 = load ptr, ptr %i.aq, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val37 = load i64, ptr %i.ar, align 8, !noundef !27
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %.val36, i64 %.val37
  call void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBV_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %.val36, ptr noundef nonnull %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !27 ; 2 uses
  %i.av = icmp ult i64 %i.au, 1152921504606846976
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %bb.g, label %bb.h

bb.d:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.ay, align 8
  call void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch20try_new_with_options(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.f

bb.e:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_8num_rowsNCINvXsK_NtB1R_5accumjNtB3G_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit39, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.az = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.o, align 8, !noundef !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.bb, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.p unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch9new_empty(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noundef nonnull %i.n)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

.body48:                                          ; preds = %bb.at, %bb.v, %bb.k, %.thread53
  %.pn31 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.v ], [ %.pn52, %.thread53 ], [ %i.bc, %bb.k ], [ %i.dg, %bb.at ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.k) #59
          to label %common.resume unwind label %bb.as

bb.k:                                             ; preds = %bb.au, %bb.q, %bb.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body48

bb.l:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

common.resume:                                    ; preds = %.body48, %bb.x, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.x ], [ %i.bd, %bb.n ], [ %.pn31, %.body48 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.f

bb.p:                                             ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !range !38, !noundef !27
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !66, !noundef !27 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bg, label %bb.q, label %bb.r, !prof !67

bb.q:                                             ; preds = %bb.p
  %i.bk = load i64, ptr %i.bj, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bi, i64 %i.bk) #56
          to label %bb.aw unwind label %bb.k

bb.r:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.bj, align 8, !nonnull !27, !noundef !27
  %i.bm = icmp ule i64 %i.bb, %i.bi
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bi, ptr %i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.bo, align 8
  %.not67 = icmp eq i64 %i.bb, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.s

._crit_edge:                                      ; preds = %bb.ap, %bb.r
  %i.by = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.lr.ph, %bb.ap
  %.sroa.013.066 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.ap ] ; 2 uses
  %i.ca = add nuw i64 %.sroa.013.066, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.013.066, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cb = load ptr, ptr %i.bp, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.cc = load i64, ptr %i.at, align 8, !noundef !27
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cc
  store ptr %i.cb, ptr %i.d, align 8
  store ptr %i.cd, ptr %i.bq, align 8
  store ptr %i.h, ptr %i.br, align 8
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2d_5slice4iter4IterRNtNtB10_12record_batch11RecordBatchENCINvNtCsa7Blp2W9WhU_12arrow_select6concat14concat_batchesRIBL_B3k_EE0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.z unwind label %.thread56.loopexit

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvMs_NtCs1N9T06jgEdt_11arrow_array12record_batchNtB4_11RecordBatch7try_new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.w unwind label %bb.v

end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EE6insertCs14kWLkQVSKO_14deltalake_core:bb.a
  store i8 %i.o, ptr %i.u, align 1, !noalias !15340
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !15335, !noalias !15338
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !15335, !noalias !15338
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !15335
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !15335
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !15335
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EE6insertCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !align !106, !noundef !27 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.e = load i64, ptr %i.d, align 8, !noundef !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15341)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !15341, !noalias !15344, !nonnull !27, !noundef !27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !15346, !noundef !27
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15341, !noalias !15344, !noundef !27
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !15346
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !15346
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !15341, !noalias !15344
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !15341, !noalias !15344
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [104 x i8], ptr %i.h, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !noalias !15341
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !15341
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.z, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !15341
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0..sroa_idx, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB15_3vec3VecbEE6insertCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !align !106, !noundef !27 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !27
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15347)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !15347, !noalias !15350, !nonnull !27, !noundef !27 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !15352, !noundef !27
  %i.m = and i8 %i.l, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.p = lshr i64 %i.f, 57
  %i.q = trunc nuw nsw i64 %i.p to i8             ; 2 uses
  %i.r = add i64 %i.h, -16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15347, !noalias !15350, !noundef !27
  %i.u = and i64 %i.t, %i.r
  store i8 %i.q, ptr %i.k, align 1, !noalias !15352
  %i.v = getelementptr i8, ptr %i.j, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store i8 %i.q, ptr %i.w, align 1, !noalias !15352
  %i.x = load <2 x i64>, ptr %i.o, align 8, !alias.scope !15347, !noalias !15350
  %i.y = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.n, i64 0
  %i.z = sub <2 x i64> %i.x, %i.y
  store <2 x i64> %i.z, ptr %i.o, align 8, !alias.scope !15347, !noalias !15350
  %i.aa = sub nsw i64 0, %i.h
  %i.ab = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !15347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -24
  store ptr %i.c, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringuE6insertCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !align !106, !noundef !27 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !27 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15353)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !15353, !noalias !15356, !nonnull !27, !noundef !27 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noalias !15358, !noundef !27
  %i.k = and i8 %i.j, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.n = lshr i64 %i.e, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 2 uses
  %i.p = add i64 %i.g, -16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15353, !noalias !15356, !noundef !27
  %i.s = and i64 %i.r, %i.p
  store i8 %i.o, ptr %i.i, align 1, !noalias !15358
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 16
  store i8 %i.o, ptr %i.u, align 1, !noalias !15358
  %i.v = load <2 x i64>, ptr %i.m, align 8, !alias.scope !15353, !noalias !15356
  %i.w = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.l, i64 0
  %i.x = sub <2 x i64> %i.v, %i.w
  store <2 x i64> %i.x, ptr %i.m, align 8, !alias.scope !15353, !noalias !15356
  %i.y = sub nsw i64 0, %i.g
  %i.z = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !15353
  store ptr %i.b, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB5_14LogDataHandler9num_files(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !27 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.c, 4
  br i1 %i.e, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.r, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.g, align 8, !noundef !27
  %i.h = add i64 %.val.i, %.sroa.02.0.i
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !27
  %i.k = add i64 %.val.i.1, %i.h
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.m = getelementptr i8, ptr %i.l, i64 112
  %.val.i.2 = load i64, ptr %i.m, align 8, !noundef !27
  %i.n = add i64 %.val.i.2, %i.k
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 152
  %.val.i.3 = load i64, ptr %i.p, align 8, !noundef !27
  %i.q = add i64 %.val.i.3, %i.n                  ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.v, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.u, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i.epil
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val.i.epil = load i64, ptr %i.t, align 8, !noundef !27
  %i.u = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.v = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit, label %.preheader.epil, !llvm.loop !15359

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3l_14LogDataHandler9num_files0NCINvXsK_NtB1R_5accumjNtB50_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3r_.exit.loopexit.unr-lcssa ], [ %i.u, %.preheader.epil ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = tail call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15363)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !15363, !noalias !15365, !nonnull !27, !noundef !27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !15363, !noalias !15365, !noundef !27 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !15368, !noalias !15373, !noundef !27
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.b, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.p = invoke { i64, i64 } @_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0EB2w_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef %i.k, i1 noundef zeroext true)
          to label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.z, !noalias !15365 ; 0 uses

_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.b, %bb.a
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !15377, !noalias !15378, !nonnull !27, !noundef !27 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i.i = load i64, ptr %i.q, align 8, !alias.scope !15377, !noalias !15378, !noundef !27 ; 4 uses
  %i.r = lshr i64 %i.g, 57
  %i.s = trunc nuw nsw i64 %i.r to i8             ; 3 uses
  %i.t = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val2.i.i.i.i = load i64, ptr %i.v, align 8    ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.w, align 8, !nonnull !27
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.g, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ba, %bb.g ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.4.121.i.i.i, %bb.g ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.01.123.i.i.i, %bb.g ]
  %i.x = phi i64 [ 0, %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.az, %bb.g ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val7.i.i ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i28.i.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !15379 ; 3 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, %i.u
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not29.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i
  %.sroa.05.030.i.i.i = phi i16 [ %i.ap, %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i ], [ %i.aa, %bb.c ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.030.i.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.0.017.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %.val7.i.i
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %.val.i.i.i = load i64, ptr %i.ah, align 8, !noalias !15382, !noundef !27 ; 7 uses
  %i.ai = icmp ult i64 %.val.i.i.i, %i.k
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %.val.i.i.i ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !15385, !noundef !27
  %i.al = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.al, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !152

bb.e:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i, i64 noundef %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #61
          to label %.noexc14.i unwind label %bb.z, !noalias !15365

.noexc14.i:                                       ; preds = %bb.e
  unreachable

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !15385, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i), !noalias !15385
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %bb.j, label %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, !prof !153

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %bb.c
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.f, !prof !67

_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.d
  %i.ao = add i16 %.sroa.05.030.i.i.i, -1
  %i.ap = and i16 %i.ao, %.sroa.05.030.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = icmp slt <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %.thread25.i.i.i, !prof !67

.thread25.i.i.i:                                  ; preds = %bb.f
  %i.as = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.at = zext nneg i16 %i.as to i64
  %i.au = add i64 %.sroa.0.017.i.i.i, %i.at
  %i.av = and i64 %i.au, %.val7.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread25.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.122.i.i.i = phi i64 [ %i.av, %.thread25.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i28.i.i.i, splat (i8 -1)
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %bb.h, !prof !67

bb.g:                                             ; preds = %.thread.i.i.i, %bb.f
  %.sroa.01.123.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.f ]
  %.sroa.4.121.i.i.i = phi i64 [ %.sroa.4.122.i.i.i, %.thread.i.i.i ], [ undef, %bb.f ]
  %i.az = add i64 %i.x, 16                        ; 2 uses
  %i.ba = add i64 %i.az, %.sroa.0.017.i.i.i
  br label %bb.c

bb.h:                                             ; preds = %.thread.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.122.i.i.i
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !15388, !noundef !27 ; 2 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.i, label %bb.p, !prof !67

bb.i:                                             ; preds = %bb.h
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !15388
  %i.be = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.bf, 0
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bf, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !15389
  br label %bb.p

bb.j:                                             ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB26_E0NCINvB1p_8get_hashB26_B2I_E0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.bi = load i64, ptr %i.j, align 8, !alias.scope !15363, !noalias !15365, !noundef !27 ; 2 uses
  %i.bj = icmp ult i64 %.val.i.i.i, %i.bi
  br i1 %i.bj, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.h, align 8, !alias.scope !15363, !noalias !15365, !nonnull !27, !noundef !27
  %i.bl = getelementptr inbounds nuw [128 x i8], ptr %i.bk, i64 %.val.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(96) %i.bm, i64 96, i1 false), !noalias !15392
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bm, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  store i64 %.val.i.i.i, ptr %0, align 8, !alias.scope !15360, !noalias !15393
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.l, !noalias !15394

bb.l:                                             ; preds = %bb.k
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.critedge unwind label %bb.m, !noalias !15394

end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_13DeltaScanExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan7execute:bb.a

bb.ao:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !17645)
  call void @llvm.experimental.noalias.scope.decl(metadata !17648)
  %i.cu = load ptr, ptr %i.i, align 8, !alias.scope !17651, !nonnull !27, !noundef !27
  %i.cv = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !17651
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEEB1q_.exit41

bb.ap:                                            ; preds = %bb.ao
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanE9drop_slowBS_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEEB1q_.exit41

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEEB1q_.exit41: ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ag

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.al, %bb.am, %bb.ad, %bb.aq, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEEB1q_.exit
  %.pn3145 = phi { ptr, i32 } [ %.pn, %bb.aq ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEEB1q_.exit ], [ %.pn, %bb.ar ], [ %i.ci, %bb.ad ], [ %.pn29, %bb.al ], [ %.pn29, %bb.am ]
  resume { ptr, i32 } %.pn3145

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEEB1q_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !17652)
  call void @llvm.experimental.noalias.scope.decl(metadata !17655)
  %i.cx = load ptr, ptr %i.k, align 8, !alias.scope !17658, !nonnull !27, !noundef !27
  %i.cy = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !17658
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs4m0Tg8nAduX_20datafusion_execution4task11TaskContextEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_13DeltaScanExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan7metrics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 416
  tail call void @_RNvMs2_NtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metricsNtB5_23ExecutionPlanMetricsSet11clone_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4execNtB5_13DeltaScanExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 8, i64 noundef range(i64 8, 17) 8) #60 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #56
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.c, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan10properties(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(416) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan10statistics(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(416) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17659)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !17659, !nonnull !27, !noundef !27 ; 5 uses
  %i.e = atomicrmw add ptr %i.d, i64 1 monotonic, align 8, !noalias !17659
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNvYNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_meta17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaBe_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvYNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_meta17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaBe_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  invoke void @_RNvMs5_NtCsjhHCjzi9uUI_17datafusion_common5statsNtB5_10Statistics11new_unknown(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_RNvYNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_meta17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaBe_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !17662
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.e:                                             ; preds = %_RNvYNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_meta17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan6schemaBe_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.k = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !17667
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit1

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit1: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan10with_fetch(ptr noalias readonly align 8 captures(none) %0, i64 range(i64 0, 2) %1, i64 %2) unnamed_addr #18 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(416) %1, i64 noundef %2, ptr noalias readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [352 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [432 x i8], align 8               ; 11 uses
  %i.i = alloca [416 x i8], align 8               ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [376 x i8], align 8           ; 5 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [232 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !noundef !27 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !27 ; 5 uses
  %.idx = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.t = icmp ult i64 %i.q, 4
  br i1 %i.t, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.q, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ag, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.af, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.04.0.i
  %i.v = getelementptr i8, ptr %i.u, i64 24
  %.val.i = load i64, ptr %i.v, align 8, !noundef !27
  %i.w = add i64 %.val.i, %.sroa.02.0.i
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.04.0.i
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.val.i.1 = load i64, ptr %i.y, align 8, !noundef !27
  %i.z = add i64 %.val.i.1, %i.w
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.04.0.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 88
  %.val.i.2 = load i64, ptr %i.ab, align 8, !noundef !27
  %i.ac = add i64 %.val.i.2, %i.z
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.04.0.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 120
  %.val.i.3 = load i64, ptr %i.ae, align 8, !noundef !27
  %i.af = add i64 %.val.i.3, %i.ac                ; 3 uses
  %i.ag = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ag, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.af, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.ak, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.aj, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.04.0.i.epil
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val.i.epil = load i64, ptr %i.ai, align 8, !noundef !27
  %i.aj = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.ak = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit, label %.preheader.epil, !llvm.loop !17672

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.af, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit.loopexit.unr-lcssa ], [ %i.aj, %.preheader.epil ] ; 2 uses
  %i.al = icmp eq i64 %2, 0
  br i1 %i.al, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit
  %i.am = icmp ugt i64 %2, %.sroa.0.0.i
  br i1 %i.am, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtBX_6string6StringjEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB2j_8adapters3map8map_foldRBQ_jjNCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB3L_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioned0NCINvXsK_NtB2h_5accumjNtB7i_3Sum3sumINtB33_3MapBF_B3D_EE0E0EB3V_.exit
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #61
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.an, align 8
  store i64 20, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ao = udiv i64 %.sroa.0.0.i, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr null, ptr %i.k, align 8
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.r, ptr %.sroa.56.0..sroa_idx, align 8
  call void @_RNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB1R_6string6StringjEEEEENtCscVxtfYSVfE7_9itertools9Itertools6chunksCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.l, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.k, i64 noundef %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtNtB6_11collections9vec_deque8VecDequeTNtNtB6_6string6StringjEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksINtNtB2G_6cloned6ClonedINtNtB2G_7flatten7FlattenINtNtNtB2K_5slice4iter4IterB11_EEEENCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB5F_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioneds_0EE9from_iterB5P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull align 8 %i.l)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtBL_11collections9vec_deque8VecDequeTNtNtBL_6string6StringjEEEECs14kWLkQVSKO_14deltalake_core.exit, %bb.d
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscVxtfYSVfE7_9itertools11groupbylazy10IntoChunksINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtB1D_7flatten7FlattenINtNtNtB4_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB38_6string6StringjEEEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(232) %i.l) #59
          to label %.thread24 unwind label %bb.am

bb.h:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscVxtfYSVfE7_9itertools11groupbylazy10IntoChunksINtNtNtNtB4_4iter8adapters6cloned6ClonedINtNtB1D_7flatten7FlattenINtNtNtB4_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB38_6string6StringjEEEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(232) %i.l)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !17673)
  call void @llvm.experimental.noalias.scope.decl(metadata !17676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17678
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !17676, !noalias !17673, !nonnull !27, !noundef !27 ; 5 uses
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8, !noalias !17678
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ar, ptr %i.g, align 8, !noalias !17678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17678
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtB7_11collections9vec_deque8VecDequeTNtNtB7_6string6StringjEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %1)
          to label %bb.o unwind label %bb.n, !noalias !17673

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtBL_6string6StringIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i, %bb.n
  %i.au = phi ptr [ %.pre.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtBL_6string6StringIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %i.ar, %bb.n ]
  %.pn.i = phi { ptr, i32 } [ %i.bp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtBL_6string6StringIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core.exit._crit_edge.i ], [ %i.ax, %bb.n ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17679)
  call void @llvm.experimental.noalias.scope.decl(metadata !17682)
  %i.av = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !17685
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.m, label %.body16

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanE9drop_slowBS_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #57
          to label %.body16 unwind label %bb.ab, !noalias !17673

bb.n:                                             ; preds = %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17678
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !17676, !noalias !17673, !nonnull !27, !noundef !27 ; 4 uses
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !17673
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.az, ptr %i.e, align 8, !noalias !17678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17678
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !17676, !noalias !17673, !nonnull !27, !noundef !27 ; 4 uses
  %i.be = atomicrmw add ptr %i.bd, i64 1 monotonic, align 8, !noalias !17673
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  store ptr %i.bd, ptr %i.d, align 8, !noalias !17678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17678
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !17676, !noalias !17673, !nonnull !27, !noundef !27 ; 4 uses
  %i.bi = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8, !noalias !17673
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  store ptr %i.bh, ptr %i.c, align 8, !noalias !17678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17678
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !17676, !noalias !17673, !noundef !27 ; 6 uses
  %.not.i = icmp eq ptr %i.bl, null               ; 2 uses
  br i1 %.not.i, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !17673
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  store ptr %i.bl, ptr %i.b, align 8, !noalias !17678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17678
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @_RNvXsy_NtCs5wg436RVUAP_24datafusion_physical_plan14execution_planNtB5_14PlanPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(352) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.bo)
          to label %bb.af unwind label %bb.y, !noalias !17673

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br i1 %.not.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = atomicrmw sub ptr %i.bl, i64 1 release, align 8, !noalias !17686
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ab, !noalias !17673

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtBL_6string6StringIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.m
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core:bb.a
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 8, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !27, !noundef !27
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !27
  %i.e = add i64 %.sroa.03.0, %.sroa.0.0          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !noundef !27 ; 2 uses
  %.not6 = icmp eq ptr %i.g, null
  br i1 %.not6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.1 = phi i64 [ %i.h, %bb.c ], [ %i.e, %bb.a ]
  ret i64 %.sroa.0.1

bb.c:                                             ; preds = %bb.a
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !noundef !27
  %i.h = add i64 %.sroa.04.0, %i.e
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 -1, 4611686018427387903) i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = lshr i64 %i.b, 2
  %i.d = add nsw i64 %i.c, -1
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array6as_anyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @517, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array6offsetCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array8is_emptyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = icmp ult i64 %i.b, 8
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array9data_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #18 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !27 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.03.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph.i

_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i64, ptr %i.d, align 8
  br label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre, %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !74, !noundef !27
  %i.l = icmp ugt i64 %i.k, %i.j
  br i1 %i.l, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = tail call { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.j, i64 noundef 8, i64 noundef 24) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %.not = icmp eq i64 %i.n, -9223372036854775807
  br i1 %.not, label %bb.b, label %bb.c, !prof !119

bb.b:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14BinaryViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !27
  %.not3 = icmp eq ptr %i.p, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit
  %i.q = extractvalue { i64, i64 } %i.m, 1
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #56
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array21get_array_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18208)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18208, !nonnull !27, !noundef !27 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18208, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 4
  br i1 %i.f, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.r, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.q, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !18208, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %.sroa.0.0.i.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i.i, align 8, !noalias !18208, !noundef !27
  %i.h = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.i.1 = load ptr, ptr %i.j, align 8, !noalias !18208, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.val.i.i.1, i64 48
  %.sroa.0.0.i.i.i.i.1 = load i64, ptr %.sroa.0.0.in.i.i.i.i.1, align 8, !noalias !18208, !noundef !27
  %i.k = add i64 %.sroa.0.0.i.i.i.i.1, %i.h
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.val.i.i.2 = load ptr, ptr %i.m, align 8, !noalias !18208, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.val.i.i.2, i64 48
  %.sroa.0.0.i.i.i.i.2 = load i64, ptr %.sroa.0.0.in.i.i.i.i.2, align 8, !noalias !18208, !noundef !27
  %i.n = add i64 %.sroa.0.0.i.i.i.i.2, %i.k
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.val.i.i.3 = load ptr, ptr %i.p, align 8, !noalias !18208, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.val.i.i.3, i64 48
  %.sroa.0.0.i.i.i.i.3 = load i64, ptr %.sroa.0.0.in.i.i.i.i.3, align 8, !noalias !18208, !noundef !27
  %i.q = add i64 %.sroa.0.0.i.i.i.i.3, %i.n       ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa, label %.preheader.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.u, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.t, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load ptr, ptr %i.s, align 8, !noalias !18208, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.val.i.i.epil, i64 48
  %.sroa.0.0.i.i.i.i.epil = load i64, ptr %.sroa.0.0.in.i.i.i.i.epil, align 8, !noalias !18208, !noundef !27
  %i.t = add i64 %.sroa.0.0.i.i.i.i.epil, %.sroa.02.0.i.i.epil ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.preheader.i.epil, !llvm.loop !18211

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa ], [ %i.t, %.preheader.i.epil ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18208, !nonnull !27, !noundef !27
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8, !noalias !18208, !noundef !27
  %i.x = add i64 %.sroa.03.0.i, %.sroa.0.0.i.i    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !18208, !noundef !27 ; 2 uses
  %.not5.i = icmp eq ptr %i.z, null
  br i1 %.not5.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.04.0.i = load i64, ptr %.sroa.04.0.in.i, align 8, !noalias !18208, !noundef !27
  %i.aa = add i64 %.sroa.04.0.i, %i.x
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.aa, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ab = add i64 %.sroa.0.0.i, 120
  ret i64 %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 4
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.r, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %.val.i = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %.sroa.0.0.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i, align 8, !noundef !27
  %i.h = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.1 = load ptr, ptr %i.j, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 48
  %.sroa.0.0.i.i.i.1 = load i64, ptr %.sroa.0.0.in.i.i.i.1, align 8, !noundef !27
  %i.k = add i64 %.sroa.0.0.i.i.i.1, %i.h
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.val.i.2 = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.val.i.2, i64 48
  %.sroa.0.0.i.i.i.2 = load i64, ptr %.sroa.0.0.in.i.i.i.2, align 8, !noundef !27
  %i.n = add i64 %.sroa.0.0.i.i.i.2, %i.k
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.val.i.3 = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 48
  %.sroa.0.0.i.i.i.3 = load i64, ptr %.sroa.0.0.in.i.i.i.3, align 8, !noundef !27
  %i.q = add i64 %.sroa.0.0.i.i.i.3, %i.n         ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.u, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.t, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load ptr, ptr %i.s, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.val.i.epil, i64 48
  %.sroa.0.0.i.i.i.epil = load i64, ptr %.sroa.0.0.in.i.i.i.epil, align 8, !noundef !27
  %i.t = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil, !llvm.loop !18212

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ], [ %i.t, %.preheader.epil ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !27, !noundef !27
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !27
  %i.x = add i64 %.sroa.03.0, %.sroa.0.0.i        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !noundef !27 ; 2 uses
  %.not5 = icmp eq ptr %i.z, null
  br i1 %.not5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i64 [ %i.aa, %bb.c ], [ %i.x, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14BinaryViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !noundef !27
  %i.aa = add i64 %.sroa.04.0, %i.x
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 1152921504606846976) i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = lshr i64 %i.b, 4
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array5sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18218
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 23, i64 24, i1 false), !noalias !18218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18218
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE5sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, i64 noundef %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b, !noalias !18213

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.pn.pn.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn.i, %bb.e ], [ %.pn.i, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #59
          to label %common.resume unwind label %bb.k, !noalias !18213

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18218
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
          to label %bb.g unwind label %bb.f, !noalias !18213

bb.d:                                             ; preds = %bb.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18219)
  call void @llvm.experimental.noalias.scope.decl(metadata !18222)
  call void @llvm.experimental.noalias.scope.decl(metadata !18225)
  call void @llvm.experimental.noalias.scope.decl(metadata !18228)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !18231, !noalias !18218, !nonnull !27, !noundef !27
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !18232
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.k, !noalias !18213

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18216, !noalias !18213, !noundef !27
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18218
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, i64 noundef %1, i64 noundef %2)
          to label %bb.j unwind label %bb.i, !noalias !18213

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #59
          to label %bb.d unwind label %bb.k, !noalias !18213

bb.j:                                             ; preds = %bb.h
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.a, align 8, !noalias !18218
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18218
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.i, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !18213
  unreachable

common.resume:                                    ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.j
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.j ], [ null, %bb.g ]
  %.sroa.0.24..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx4, i8 23, i64 24, i1 false), !alias.scope !18213, !noalias !18216
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !18216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !18233
  %i.r = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 136, i64 noundef range(i64 8, 17) 8) #60, !noalias !18233 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14BinaryViewTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.l:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #56
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBN_5types14BinaryViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array7to_dataCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !18239, !noalias !18236, !noundef !27 ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_RNvXNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2_20GenericByteViewArrayNtNtB6_5types14BinaryViewTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !18236
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !18239, !noalias !18236, !noundef !27
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load <2 x i64>, ptr %i.v, align 8, !alias.scope !18239, !noalias !18236
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.y = load <2 x i64>, ptr %i.x, align 8, !alias.scope !18239, !noalias !18236
  br label %_RNvXNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2_20GenericByteViewArrayNtNtB6_5types14BinaryViewTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !18236
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #59
          to label %bb.k unwind label %bb.j, !noalias !18236

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i
  resume { ptr, i32 } %i.m

_RNvXNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2_20GenericByteViewArrayNtNtB6_5types14BinaryViewTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.h
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i = phi ptr [ %i.u, %bb.h ], [ undef, %bb.f ]
  %i.aa = phi <2 x i64> [ %i.w, %bb.h ], [ undef, %bb.f ]
  %i.ab = phi <2 x i64> [ %i.y, %bb.h ], [ undef, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 23, i64 24, i1 false), !alias.scope !18236, !noalias !18239
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !18239
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.q, ptr %i.ae, align 8, !alias.scope !18236, !noalias !18239
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !18236, !noalias !18239
  %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store <2 x i64> %i.aa, ptr %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18236, !noalias !18239
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store <2 x i64> %i.ab, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !18236, !noalias !18239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18241
  call void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array8is_emptyCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = icmp ult i64 %i.b, 16
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array9data_typeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_5Array9into_dataCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXs6_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayNtNtCs3v6NujDNJcu_10arrow_data4data9ArrayDataINtNtCsbvkFyIu7lgC_4core7convert4FromINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array13shrink_to_fitCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !27 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.03.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 24 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit, label %.lr.ph.i

_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i64, ptr %i.d, align 8
  br label %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit

_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit, %bb.a
  %i.j = phi i64 [ %.pre, %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !74, !noundef !27
  %i.l = icmp ugt i64 %i.k, %i.j
  br i1 %i.l, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.m = tail call { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.j, i64 noundef 8, i64 noundef 24) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %.not = icmp eq i64 %i.n, -9223372036854775807
  br i1 %.not, label %bb.b, label %bb.c, !prof !119

bb.b:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs2R_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_7IterMutNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB2M_20GenericByteViewArrayNtNtB2Q_5types14StringViewTypeENtB2O_5Array13shrink_to_fit0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !27
  %.not3 = icmp eq ptr %i.p, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs14kWLkQVSKO_14deltalake_core.exit
  %i.q = extractvalue { i64, i64 } %i.m, 1
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.q) #56
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer13shrink_to_fit(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array18logical_null_countCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array21get_array_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18251)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18251, !nonnull !27, !noundef !27 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18251, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 4
  br i1 %i.f, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.sroa.04.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.r, %.preheader.i ] ; 5 uses
  %.sroa.02.0.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.q, %.preheader.i ]
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %.val.i.i = load ptr, ptr %i.g, align 8, !noalias !18251, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %.sroa.0.0.i.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i.i, align 8, !noalias !18251, !noundef !27
  %i.h = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.i.1 = load ptr, ptr %i.j, align 8, !noalias !18251, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.val.i.i.1, i64 48
  %.sroa.0.0.i.i.i.i.1 = load i64, ptr %.sroa.0.0.in.i.i.i.i.1, align 8, !noalias !18251, !noundef !27
  %i.k = add i64 %.sroa.0.0.i.i.i.i.1, %i.h
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.val.i.i.2 = load ptr, ptr %i.m, align 8, !noalias !18251, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.val.i.i.2, i64 48
  %.sroa.0.0.i.i.i.i.2 = load i64, ptr %.sroa.0.0.in.i.i.i.i.2, align 8, !noalias !18251, !noundef !27
  %i.n = add i64 %.sroa.0.0.i.i.i.i.2, %i.k
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.val.i.i.3 = load ptr, ptr %i.p, align 8, !noalias !18251, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.val.i.i.3, i64 48
  %.sroa.0.0.i.i.i.i.3 = load i64, ptr %.sroa.0.0.in.i.i.i.i.3, align 8, !noalias !18251, !noundef !27
  %i.q = add i64 %.sroa.0.0.i.i.i.i.3, %i.n       ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa, label %.preheader.i

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.sroa.04.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.sroa.04.0.i.i.epil = phi i64 [ %i.u, %.preheader.i.epil ], [ %.sroa.04.0.i.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.epil = phi i64 [ %i.t, %.preheader.i.epil ], [ %.sroa.02.0.i.i.epil.init, %.preheader.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.i.epil
  %.val.i.i.epil = load ptr, ptr %i.s, align 8, !noalias !18251, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.val.i.i.epil, i64 48
  %.sroa.0.0.i.i.i.i.epil = load i64, ptr %.sroa.0.0.in.i.i.i.i.epil, align 8, !noalias !18251, !noundef !27
  %i.t = add i64 %.sroa.0.0.i.i.i.i.epil, %.sroa.02.0.i.i.epil ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, label %.preheader.i.epil, !llvm.loop !18254

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa, %.preheader.i.epil, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i.loopexit.unr-lcssa ], [ %i.t, %.preheader.i.epil ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !18251, !nonnull !27, !noundef !27
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8, !noalias !18251, !noundef !27
  %i.x = add i64 %.sroa.03.0.i, %.sroa.0.0.i.i    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !18251, !noundef !27 ; 2 uses
  %.not5.i = icmp eq ptr %i.z, null
  br i1 %.not5.i, label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.04.0.in.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.04.0.i = load i64, ptr %.sroa.04.0.in.i, align 8, !noalias !18251, !noundef !27
  %i.aa = add i64 %.sroa.04.0.i, %i.x
  br label %_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.aa, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %i.ab = add i64 %.sroa.0.0.i, 120
  ret i64 %i.ab
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array22get_buffer_memory_sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !27, !noundef !27 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !27 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.f = icmp ult i64 %i.d, 4
  br i1 %i.f, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.r, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %.val.i = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %.sroa.0.0.i.i.i = load i64, ptr %.sroa.0.0.in.i.i.i, align 8, !noundef !27
  %i.h = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.1 = load ptr, ptr %i.j, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.val.i.1, i64 48
  %.sroa.0.0.i.i.i.1 = load i64, ptr %.sroa.0.0.in.i.i.i.1, align 8, !noundef !27
  %i.k = add i64 %.sroa.0.0.i.i.i.1, %i.h
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.val.i.2 = load ptr, ptr %i.m, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.val.i.2, i64 48
  %.sroa.0.0.i.i.i.2 = load i64, ptr %.sroa.0.0.in.i.i.i.2, align 8, !noundef !27
  %i.n = add i64 %.sroa.0.0.i.i.i.2, %i.k
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %.val.i.3 = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.val.i.3, i64 48
  %.sroa.0.0.i.i.i.3 = load i64, ptr %.sroa.0.0.in.i.i.i.3, align 8, !noundef !27
  %i.q = add i64 %.sroa.0.0.i.i.i.3, %i.n         ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.u, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.t, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load ptr, ptr %i.s, align 8, !nonnull !27, !noundef !27
  %.sroa.0.0.in.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.val.i.epil, i64 48
  %.sroa.0.0.i.i.i.epil = load i64, ptr %.sroa.0.0.in.i.i.i.epil, align 8, !noundef !27
  %i.t = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit, label %.preheader.epil, !llvm.loop !18255

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.unr-lcssa ], [ %i.t, %.preheader.epil ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !27, !noundef !27
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.03.0 = load i64, ptr %.sroa.03.0.in, align 8, !noundef !27
  %i.x = add i64 %.sroa.03.0, %.sroa.0.0.i        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !noundef !27 ; 2 uses
  %.not5 = icmp eq ptr %i.z, null
  br i1 %.not5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi i64 [ %i.aa, %bb.c ], [ %i.x, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit ]
  ret i64 %.sroa.0.0

bb.c:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB3l_20GenericByteViewArrayNtNtB3p_5types14StringViewTypeENtB3n_5Array22get_buffer_memory_size0NCINvXsK_NtB1R_5accumjNtB5V_3Sum3sumINtB2D_3MapBF_B3d_EE0E0ECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.04.0.in = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.sroa.04.0 = load i64, ptr %.sroa.04.0.in, align 8, !noundef !27
  %i.aa = add i64 %.sroa.04.0, %i.x
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 0, 1152921504606846976) i64 @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array3lenCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !noundef !27
  %i.c = lshr i64 %i.b, 4
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array5nullsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !27
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs1_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_5Array5sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [40 x i8], align 8          ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [136 x i8], align 8               ; 8 uses
  %.sroa.0 = alloca [72 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18259)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 26, i64 24, i1 false), !noalias !18261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18261
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferoE5sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, i64 noundef %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b, !noalias !18256

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.pn.pn.i = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn.i, %bb.e ], [ %.pn.i, %bb.d ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #59
          to label %common.resume unwind label %bb.k, !noalias !18256

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18261
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
          to label %bb.g unwind label %bb.f, !noalias !18256

bb.d:                                             ; preds = %bb.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18262)
  call void @llvm.experimental.noalias.scope.decl(metadata !18265)
  call void @llvm.experimental.noalias.scope.decl(metadata !18268)
  call void @llvm.experimental.noalias.scope.decl(metadata !18271)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !18274, !noalias !18261, !nonnull !27, !noundef !27
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !18275
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.k, !noalias !18256

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18259, !noalias !18256, !noundef !27
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18261
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4nullNtB2_10NullBuffer5slice(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, i64 noundef %1, i64 noundef %2)
          to label %bb.j unwind label %bb.i, !noalias !18256

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.b) #59
          to label %bb.d unwind label %bb.k, !noalias !18256

bb.j:                                             ; preds = %bb.h
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.a, align 8, !noalias !18261
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx2.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18261
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit

bb.k:                                             ; preds = %bb.i, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !18256
  unreachable

common.resume:                                    ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalar12ScalarBufferoEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.j
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload1.i, %bb.j ], [ null, %bb.g ]
  %.sroa.0.24..sroa_idx4 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx4, i8 26, i64 24, i1 false), !alias.scope !18256, !noalias !18259
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !18259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !18261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0, i64 72, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.0.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.i, i64 40, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !18276
  %i.r = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 136, i64 noundef range(i64 8, 17) 8) #60, !noalias !18276 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.l, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14StringViewTypeEEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !67

bb.l:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5sliceCs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #56
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBN_5types14StringViewTypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.q)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics11null_counts:bb.a
  br label %bb.ac

.body:                                            ; preds = %._crit_edge
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

._crit_edge:                                      ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  invoke void @_RNvXsI_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEE4from(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.ad unwind label %.body

bb.ac:                                            ; preds = %.lr.ph, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.022.060 = phi i64 [ 0, %.lr.ph ], [ %i.cs, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit ] ; 5 uses
  %i.cs = add nuw i64 %.sroa.022.060, 1           ; 2 uses
  %i.ct = invoke noundef zeroext i1 @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_7is_null(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i64 noundef %.sroa.022.060)
          to label %bb.ak unwind label %.loopexit

bb.ad:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cv, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !22990
  %i.cw = call noundef align 8 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 112, i64 noundef range(i64 8, 17) 8) #60, !noalias !22990 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ae, label %bb.ah, !prof !67

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 112) #56
          to label %.noexc45 unwind label %bb.af

.noexc45:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs1N9T06jgEdt_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.cv)
          to label %.body.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cw, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !22993)
  call void @llvm.experimental.noalias.scope.decl(metadata !22996)
  %i.da = load ptr, ptr %i.j, align 8, !alias.scope !22999, !nonnull !27, !noundef !27
  %i.db = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !22999
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48 unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !23000)
  call void @llvm.experimental.noalias.scope.decl(metadata !23003)
  %i.dd = load ptr, ptr %i.k, align 8, !alias.scope !23006, !nonnull !27, !noundef !27
  %i.de = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !23006
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #57
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit49: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit48, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.j

bb.ak:                                            ; preds = %bb.ac
  br i1 %i.ct, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.val = load ptr, ptr %i.cq, align 8
  %.val34 = load i64, ptr %i.cr, align 8, !noundef !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.022.060, ptr %i.c, align 8
  %i.dg = lshr i64 %.val34, 3                     ; 2 uses
  %i.dh = icmp ult i64 %.sroa.022.060, %i.dg
  br i1 %i.dh, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.am, !prof !119

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.dg, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.di, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @178, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #61
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.am
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.022.060
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, %bb.ak
  %.sroa.020.0 = phi i64 [ 0, %bb.ak ], [ %i.dk, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt64TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.dl = load i64, ptr %i.co, align 8, !alias.scope !23007, !noundef !27 ; 3 uses
  %i.dm = load i64, ptr %i.i, align 8, !range !74, !alias.scope !23007, !noundef !27
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.ao, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs82rWpVkwJ6_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecyE8push_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.ao, %bb.an
  %i.do = load ptr, ptr %i.cn, align 8, !alias.scope !23007, !nonnull !27, !noundef !27
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dl
  store i64 %.sroa.020.0, ptr %i.dp, align 8
  %i.dq = add i64 %i.dl, 1
  store i64 %i.dq, ptr %i.co, align 8, !alias.scope !23007
  %exitcond.not = icmp eq i64 %i.cs, %i.cp
  br i1 %exitcond.not, label %._crit_edge, label %bb.ac

.loopexit:                                        ; preds = %bb.ac, %bb.ao
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecyEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.i) #59
          to label %.body.thread unwind label %bb.k

bb.aq:                                            ; preds = %bb.aa
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !27, !align !106, !noundef !27 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !27 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.e = icmp ult i64 %i.c, 4
  br i1 %i.e, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.c, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.r, %.preheader ] ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.q, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val.i = load i64, ptr %i.g, align 8, !noundef !27
  %i.h = add i64 %.val.i, %.sroa.02.0.i
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %.val.i.1 = load i64, ptr %i.j, align 8, !noundef !27
  %i.k = add i64 %.val.i.1, %i.h
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.m = getelementptr i8, ptr %i.l, i64 112
  %.val.i.2 = load i64, ptr %i.m, align 8, !noundef !27
  %i.n = add i64 %.val.i.2, %i.k
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 152
  %.val.i.3 = load i64, ptr %i.p, align 8, !noundef !27
  %i.q = add i64 %.val.i.3, %i.n                  ; 3 uses
  %i.r = add nuw i64 %.sroa.04.0.i, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.v, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.u, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.sroa.04.0.i.epil
  %i.t = getelementptr i8, ptr %i.s, i64 32
  %.val.i.epil = load i64, ptr %i.t, align 8, !noundef !27
  %i.u = add i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.v = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit, label %.preheader.epil, !llvm.loop !23010

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit: ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1T_8adapters3map8map_foldRBQ_jjNCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3m_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics14num_containers0NCINvXsK_NtB1R_5accumjNtB6l_3Sum3sumINtB2D_3MapBF_B3d_EE0E0EB3s_.exit.loopexit.unr-lcssa ], [ %i.u, %.preheader.epil ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB6_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics9contained(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [96 x i8], align 16               ; 6 uses
  %i.i = alloca [96 x i8], align 16               ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !27
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !27, !align !106, !noundef !27 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !27, !noundef !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.s = load i64, ptr %i.r, align 8, !noundef !27 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23014)
  %.idx.i = mul nuw nsw i64 %i.s, 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23016)
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val3.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !23019, !noalias !23020, !noundef !27 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val2.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !23019, !noalias !23020, !nonnull !27
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %.lr.ph.i.i
  %i.w = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.x, %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val4.i.i = load i64, ptr %i.y, align 8, !alias.scope !23014, !noalias !23022, !noundef !27
  %i.z = icmp eq i64 %.val4.i.i, %.val3.i.i.i
  br i1 %i.z, label %bb.d, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %.val3.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !23014, !noalias !23022, !nonnull !27, !noundef !27
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val3.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %.val3.i.i.i), !noalias !23023
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit, label %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i

_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i: ; preds = %bb.d, %bb.c
  %.not8.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not8.i.i, label %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.c

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNCNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB7_13SliceContains14slice_contains0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.i.i, %bb.b, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.e

_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ac = tail call fastcc { ptr, ptr } @_RNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB4_14LogDataHandler10pick_stats(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @894) ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20, %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit.thread
  ret void

bb.f:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ad, ptr %i.j, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ag = invoke { ptr, ptr } @_RNvXNtCs1N9T06jgEdt_11arrow_array5arrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core.exit
  store ptr null, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit20: ; preds = %bb.u, %bb.t, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

bb.h:                                             ; preds = %.thread32, %bb.al, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %lpad.phi31, %bb.al ], [ %lpad.thr_comm.split-lp33, %.thread32 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !23024)
  call void @llvm.experimental.noalias.scope.decl(metadata !23027)
  %i.ah = load ptr, ptr %i.j, align 8, !alias.scope !23030, !nonnull !27, !noundef !27
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !23030
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.am

bb.j:                                             ; preds = %bb.r, %bb.w, %bb.s, %bb.q, %bb.n, %bb.m, %bb.k, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.k:                                             ; preds = %bb.f
  %i.al = extractvalue { ptr, ptr } %i.ag, 0      ; 3 uses
  %i.am = extractvalue { ptr, ptr } %i.ag, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !27, !nonnull !27
  invoke void %i.ao(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef %i.al)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.ap = load i128, ptr %i.c, align 16, !noundef !27
  %i.aq = icmp eq i128 %i.ap, 41615882080583030659327284372293995949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @896, i64 noundef 48)
          to label %bb.o unwind label %bb.j

bb.n:                                             ; preds = %bb.l
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericReEB8_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) @896, i64 noundef 48)
          to label %bb.q unwind label %bb.j

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.h, i64 96, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ar = load i64, ptr %i.i, align 16, !range !2348, !noundef !27
  %.not14.not = icmp eq i64 %i.ar, -9223372036854775711
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !27, !align !106 ; 3 uses
  br i1 %.not14.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.al, ptr %i.au, align 8
  store i64 -9223372036854775711, ptr %i.i, align 16
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.h)
          to label %bb.p unwind label %bb.j

bb.r:                                             ; preds = %bb.p
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEBK_(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.i)
          to label %bb.t unwind label %bb.j

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !noundef !27
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nsw i64 %i.ax, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.ay, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.j
end_hunk_5
