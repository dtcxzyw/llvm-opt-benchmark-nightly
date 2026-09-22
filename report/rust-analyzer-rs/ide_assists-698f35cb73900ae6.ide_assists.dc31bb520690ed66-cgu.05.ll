Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.05?download=true
inline.NumInlined: 5238
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type18unwrap_return_type:bb.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body140, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, %bb.aq
  %.pn55 = phi { ptr, i32 } [ %i.cv, %bb.aq ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i ], [ %.pn, %.body140 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val75 = load ptr, ptr %i.cq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val75, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !noundef !5
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i130, label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i130: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val75) #30
          to label %.body unwind label %bb.ab

bb.aq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i152, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i137, %bb.aa
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit

bb.ar:                                            ; preds = %bb.aa
  %i.cw = extractvalue { i64, ptr } %i.bp, 0      ; 2 uses
  %.not49 = icmp eq i64 %i.cw, -1
  br i1 %.not49, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit139, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cx = extractvalue { i64, ptr } %i.bp, 1
  store i64 %i.cw, ptr %i.j, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 7 uses
  store ptr %i.cx, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12resolve_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.at unwind label %.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit139: ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i137, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.db = getelementptr inbounds nuw i8, ptr %.val73, i64 48 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !noundef !5
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i133, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i133: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit139
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val73) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit135 unwind label %bb.i

.body140:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i146, %bb.az
  %.pn = phi { ptr, i32 } [ %i.dy, %bb.az ], [ %i.et, %bb.bi ], [ %i.et, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i146 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val87 = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.val87, i64 48 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !noundef !5
  %i.dh = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i: ; preds = %.body140
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val87) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.ab

.loopexit:                                        ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type18unwrap_return_type0B7_.exit.thread.i, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body140

.loopexit.split-lp:                               ; preds = %bb.as, %bb.aw, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type13UnwrapperKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_18unwrap_return_type0EBW_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body140

bb.at:                                            ; preds = %bb.as
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !range !23, !noundef !5
  %.not50 = icmp eq i32 %i.dk, -1
  br i1 %.not50, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.0176.0.copyload = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.09.0.copyload.i = load i32, ptr %.sroa.0176.0.copyload, align 8, !noalias !826 ; 2 uses
  %i.dl = icmp ne i32 %.sroa.09.0.copyload.i, 27
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp eq i32 %.sroa.09.0.copyload.i, 7
  br i1 %i.dm, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread: ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit, %bb.au, %.loopexit190, %bb.av
  %.val85 = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.val85, i64 48 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !noundef !5
  %i.dp = add i32 %i.do, -1                       ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 4
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i137, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit139

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i137: ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val85) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit139 unwind label %bb.aq

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit: ; preds = %bb.au
  %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0176.0.copyload, i64 24
  %.sroa.811.sroa.9.0.copyload.i = load i32, ptr %.sroa.811.sroa.9.0..sroa.811.0..sroa_idx.sroa_idx.i, align 8, !noalias !826 ; 2 uses
  %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0176.0.copyload, i64 20
  %.sroa.811.sroa.8.0.copyload.i = load i32, ptr %.sroa.811.sroa.8.0..sroa.811.0..sroa_idx.sroa_idx.i, align 4, !noalias !826 ; 2 uses
  %.sroa.811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0176.0.copyload, i64 16
  %.sroa.811.sroa.0.0.copyload.i = load i8, ptr %.sroa.811.0..sroa_idx.i, align 8, !noalias !826
  %i.dr = icmp eq i8 %.sroa.811.sroa.0.0.copyload.i, 2
  br i1 %i.dr, label %bb.aw, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

bb.aw:                                            ; preds = %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl5scope(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noundef nonnull align 8 %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy)
          to label %bb.ax unwind label %.loopexit.split-lp

bb.ax:                                            ; preds = %bb.aw
  %i.ds = load i64, ptr %i.f, align 8, !range !6, !noundef !5
  %.not51 = icmp eq i64 %i.ds, -1
  br i1 %.not51, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !5, !align !13, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  store ptr %i.cz, ptr %i.h, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.dx = load <2 x i32>, ptr %i.dv, align 8
  store <2 x i32> %i.dx, ptr %i.dw, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %.body140 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.ay
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %bb.bc unwind label %.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.loopexit190

.loopexit190:                                     ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i.1, %bb.be, %bb.bh, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type6as_adt.exit.thread

bb.bc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECsiU5vK8fN4ZC_11ide_assists.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ea = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_option_Option(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i unwind label %.loopexit ; 2 uses

_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i: ; preds = %bb.bc
  %i.eb = extractvalue { i32, i32 } %i.ea, 0      ; 2 uses
  %.not.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type18unwrap_return_type0B7_.exit.thread.i, label %bb.bd

bb.bd:                                            ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i
  %i.ec = extractvalue { i32, i32 } %i.ea, 1
  %i.ed = icmp eq i32 %.sroa.811.sroa.9.0.copyload.i, %i.ec
  %i.ee = icmp eq i32 %.sroa.811.sroa.8.0.copyload.i, %i.eb
  %or.cond.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type13UnwrapperKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_18unwrap_return_type0EBW_.exit, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type18unwrap_return_type0B7_.exit.thread.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type18unwrap_return_type0B7_.exit.thread.i: ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i, %bb.bd
  %i.ef = invoke { i32, i32 } @_RNvMNtCs6oosyzwIepl_6ide_db11famous_defsNtB2_10FamousDefs18core_result_Result(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i.1 unwind label %.loopexit ; 2 uses

_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i.1: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type18unwrap_return_type0B7_.exit.thread.i
  %i.eg = extractvalue { i32, i32 } %i.ef, 0      ; 2 uses
  %.not.i.i.1 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.1, label %.loopexit190, label %bb.be

bb.be:                                            ; preds = %_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_typeNtB2_13UnwrapperKind9core_type.exit.i.i.1
  %i.eh = extractvalue { i32, i32 } %i.ef, 1
  %i.ei = icmp eq i32 %.sroa.811.sroa.9.0.copyload.i, %i.eh
  %i.ej = icmp eq i32 %.sroa.811.sroa.8.0.copyload.i, %i.eg
  %or.cond.i.1 = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond.i.1, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type13UnwrapperKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_18unwrap_return_type0EBW_.exit, label %.loopexit190

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type13UnwrapperKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_18unwrap_return_type0EBW_.exit: ; preds = %bb.be, %bb.bd
  %.idx.lcssa193 = phi i64 [ 0, %bb.bd ], [ 1, %bb.be ]
  %.ptr.le = getelementptr inbounds nuw i8, ptr @113, i64 %.idx.lcssa193 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.val97 = load i64, ptr %i.j, align 8, !range !26, !noundef !5
  %.val98 = load ptr, ptr %i.cy, align 8
  %i.ek = invoke fastcc { i64, ptr } @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type20extract_wrapped_type(i64 %.val97, ptr %.val98)
          to label %bb.bf unwind label %.loopexit.split-lp ; 2 uses

bb.bf:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type13UnwrapperKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBS_18unwrap_return_type0EBW_.exit
  %i.el = extractvalue { i64, ptr } %i.ek, 0      ; 2 uses
  %.not53 = icmp eq i64 %i.el, -1
  br i1 %.not53, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.em = extractvalue { i64, ptr } %i.ek, 1
  store i64 %i.el, ptr %i.e, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.em, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %2 = load i8, ptr %.ptr.le, align 1, !range !17, !noundef !5
  %3 = trunc nuw i8 %2 to i1                      ; 2 uses
  %spec.select = select i1 %3, ptr @116, ptr @114
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %spec.select, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 25, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 5, ptr %i.eq, align 8
  store i64 0, ptr %i.d, align 8
  %i.er = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5
  %i.es = invoke fastcc { i32, i32 } @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range(ptr noundef nonnull align 8 %i.er)
          to label %bb.bj unwind label %bb.bi     ; 2 uses

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit190

bb.bi:                                            ; preds = %bb.bj, %bb.bg
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val83 = load ptr, ptr %i.en, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val83, i64 48 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !noundef !5
  %i.ew = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ew, ptr %i.eu, align 4
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i146, label %.body140

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i146: ; preds = %bb.bi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val83) #30
          to label %.body140 unwind label %bb.ab

bb.bj:                                            ; preds = %bb.bg
  %spec.select204 = select i1 %3, ptr @117, ptr @115
  %i.ey = extractvalue { i32, i32 } %i.es, 0
  %i.ez = extractvalue { i32, i32 } %i.es, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.o, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.j, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.ptr.le, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %1, ptr %i.ff, align 8
  %i.fg = invoke noundef zeroext i1 @_RINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB5_7Assists3addReNCNvNtNtB7_8handlers18unwrap_return_type18unwrap_return_types_0EB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %spec.select204, i64 noundef 25, i32 noundef %i.ey, i32 noundef %i.ez, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.c)
          to label %bb.bk unwind label %bb.bi     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val81 = load ptr, ptr %i.en, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val81, i64 48 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noundef !5
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  store i32 %i.fj, ptr %i.fh, align 4
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit151

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149: ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val81) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit151 unwind label %.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit151: ; preds = %bb.bk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val79 = load ptr, ptr %i.cy, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val79, i64 48 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !5
  %i.fn = add i32 %i.fm, -1                       ; 2 uses
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i152, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit154

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i152: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit151
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val79) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit154 unwind label %bb.aq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit154: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit151, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TupleTypeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val71 = load ptr, ptr %i.fp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val71, i64 48 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !noundef !5
  %i.fs = add i32 %i.fr, -1                       ; 2 uses
  store i32 %i.fs, ptr %i.fq, align 4
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i155, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit157

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i155: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit154
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val71) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit157 unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit157: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists.exit154, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !noundef !5
  %i.fw = add i32 %i.fv, -1                       ; 2 uses
  store i32 %i.fw, ptr %i.fu, align 4
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %bb.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit157
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159 unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit157, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.val92 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val92, i64 48 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !noundef !5
  %i.ga = add i32 %i.fz, -1                       ; 2 uses
  store i32 %i.ga, ptr %i.fy, align 4
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101.sink.split, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101.sink.split: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit115
  %.val92.sink = phi ptr [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit115 ], [ %.val92, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159 ]
  %.sroa.0.7.ph = phi i1 [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit115 ], [ %i.fg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159 ]
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val92.sink) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101.sink.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit115
  %.sroa.0.7 = phi i1 [ false, %bb.a ], [ %i.fg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit159 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit115 ], [ %.sroa.0.7.ph, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit101.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret i1 %.sroa.0.7

bb.bm:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !noundef !5
  %i.ge = add i32 %i.gd, -1                       ; 2 uses
  store i32 %i.ge, ptr %i.gc, align 4
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i162, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit164

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i162: ; preds = %bb.bm
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ci) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit164 unwind label %bb.ak

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11ClosureExprECsiU5vK8fN4ZC_11ide_assists.exit125: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit164, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECsiU5vK8fN4ZC_11ide_assists.exit135

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7RetTypeECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit, %bb.e
  resume { ptr, i32 } %.pn59
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18unwrap_return_type20extract_wrapped_type(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = icmp eq i64 %.0.val, 9
  br i1 %i.c, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = tail call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.8.val) #33 ; 7 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.b, align 8
  %i.e = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path13first_segment(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.e       ; 8 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit, %bb.h, %bb.e
  %.pn19 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %.pn17, %bb.h ], [ %.pn17, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noundef !5
  %i.h = add i32 %i.g, -1                         ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.d) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.af

bb.e:                                             ; preds = %bb.ad, %bb.n, %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit

bb.f:                                             ; preds = %bb.c
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit38, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %i.e)
          to label %bb.j unwind label %bb.i       ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit38: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit52, %bb.n, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !5
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.sink.split.sink.split, label %.sink.split

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.body, %bb.o, %bb.i
  %.pn17 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn, %bb.o ], [ %.pn, %.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !5
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.e) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentECsiU5vK8fN4ZC_11ide_assists.exit unwind label %bb.af

bb.i:                                             ; preds = %bb.ag, %bb.ac, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit

bb.j:                                             ; preds = %bb.g
  %.not14 = icmp eq ptr %i.k, null
  br i1 %.not14, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes14GenericArgListECsiU5vK8fN4ZC_11ide_assists.exit52, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 8 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !5 ; 2 uses
end_hunk_0
