Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfTiledOutputFile?download=true
inline.NumInlined: 847
inline.NumDeleted: 418
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7Imf_3_415TiledOutputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  %i.bt = select i1 %i.br, i64 192153584101141162, i64 %i.bs ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bu = mul nuw nsw i64 %i.bt, 48
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #25
          to label %.noexc42 unwind label %.loopexit140 ; 5 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bm ; 5 uses
  store i32 %i.bi, ptr %i.bw, align 8, !tbaa !204
  %.sroa.689.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.998.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.689.0..sroa_idx90, i8 0, i64 24, i1 false)
  store i8 1, ptr %.sroa.998.0..sroa_idx99, align 8, !tbaa !205
  %.sroa.10103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 0, ptr %.sroa.10103.0..sroa_idx104, align 4, !tbaa !117
  %.sroa.11106.0..sroa_idx107 = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i32 0, ptr %.sroa.11106.0..sroa_idx107, align 8, !tbaa !117
  br i1 %i.bp, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc42, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %.noexc42 ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.aw, %.noexc42 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !206, !alias.scope !207
  %i.bx = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.au
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !191

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc42
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %.noexc42 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48
  %.not.i27.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bm) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  %i.ca = getelementptr inbounds nuw [48 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.av:                                            ; preds = %bb.an
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.aw:                                            ; preds = %bb.ao
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit140:                                     ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp141:                            ; preds = %bb.at
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.ax:                                            ; preds = %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 288
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !201 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.be, i64 296
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !208 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 304
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !209 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !210 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 336
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !211, !range !138, !noundef !139
  %i.cn = zext nneg i8 %i.cm to i32               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 337
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !212, !range !138, !noundef !139
  %i.cq = zext nneg i8 %i.cp to i32               ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.av, %i.au
  br i1 %.not.i.i43, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.ce, ptr %i.av, align 8, !tbaa !204
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.cg, ptr %.sroa.667.0..sroa_idx, align 8, !tbaa !141
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.ci, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !142
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %i.ck, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !142
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !205
  %.sroa.1077.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  store i32 %i.cn, ptr %.sroa.1077.0..sroa_idx, align 4, !tbaa !117
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i32 %i.cq, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !117
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

bb.az:                                            ; preds = %bb.ax
  %i.cs = ptrtoint ptr %i.au to i64
  %i.ct = ptrtoint ptr %i.aw to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775776
  br i1 %i.cv, label %bb.ba, label %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #29
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.az
  %i.cw = sdiv exact i64 %i.cu, 48                ; 3 uses
  %i.cx = icmp eq ptr %i.au, %i.aw                ; 2 uses
  %.sroa.speculated.i.i.i.i46 = select i1 %i.cx, i64 1, i64 %i.cw
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.cw ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cw
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 192153584101141162)
  %i.db = select i1 %i.cz, i64 192153584101141162, i64 %i.da ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.dc = mul nuw nsw i64 %i.db, 48
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #25
          to label %.noexc57 unwind label %.loopexit ; 5 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cu ; 7 uses
  store i32 %i.ce, ptr %i.de, align 8, !tbaa !204
  %.sroa.667.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.cg, ptr %.sroa.667.0..sroa_idx68, align 8, !tbaa !141
  %.sroa.7.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store i64 %i.ci, ptr %.sroa.7.0..sroa_idx70, align 8, !tbaa !142
  %.sroa.8.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store i64 %i.ck, ptr %.sroa.8.0..sroa_idx72, align 8, !tbaa !142
  %.sroa.9.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i8 0, ptr %.sroa.9.0..sroa_idx74, align 8, !tbaa !205
  %.sroa.1077.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.de, i64 36
  store i32 %i.cn, ptr %.sroa.1077.0..sroa_idx78, align 4, !tbaa !117
  %.sroa.11.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i32 %i.cq, ptr %.sroa.11.0..sroa_idx80, align 8, !tbaa !117
  br i1 %i.cx, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52, label %.lr.ph.i.i.i.i.i.i48

.lr.ph.i.i.i.i.i.i48:                             ; preds = %.noexc57, %.lr.ph.i.i.i.i.i.i48
  %.03.i.i.i.i.i.i49 = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.i48 ], [ %i.dd, %.noexc57 ] ; 2 uses
  %.092.i.i.i.i.i.i50 = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i.i48 ], [ %i.aw, %.noexc57 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.03.i.i.i.i.i.i49, ptr noundef nonnull readonly align 8 dereferenceable(48) %.092.i.i.i.i.i.i50, i64 48, i1 false), !tbaa.struct !206, !alias.scope !213
  %i.df = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i50, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i49, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.df, %i.au
  br i1 %.not.i.i.i.i.i.i51, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52, label %.lr.ph.i.i.i.i.i.i48, !llvm.loop !191

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52: ; preds = %.lr.ph.i.i.i.i.i.i48, %.noexc57
  %.0.lcssa.i.i.i.i.i.i53 = phi ptr [ %i.dd, %.noexc57 ], [ %i.dg, %.lr.ph.i.i.i.i.i.i48 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i53, i64 48
  %.not.i27.i.i.i54 = icmp eq ptr %i.aw, null
  br i1 %.not.i27.i.i.i54, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cu) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55: ; preds = %bb.bb, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i52
  %i.di = getelementptr inbounds nuw [48 x i8], ptr %i.dd, i64 %i.db
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i45
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp:                               ; preds = %bb.ba
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ay, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55, %bb.ar, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.dj = phi ptr [ %i.au, %bb.ay ], [ %i.di, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.au, %bb.ar ], [ %i.ca, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dk = phi ptr [ %i.cr, %bb.ay ], [ %i.dh, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.bj, %bb.ar ], [ %i.bz, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dl = phi ptr [ %i.aw, %bb.ay ], [ %i.dd, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i55 ], [ %i.aw, %bb.ar ], [ %i.bv, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.dm = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0121.0) #28
  br label %.preheader, !llvm.loop !195

_ZN7Imf_3_411FrameBufferaSERKS0_.exit:            ; preds = %bb.al
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !105 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 232 ; 6 uses
  %i.dp = ptrtoint ptr %i.av to i64
  %i.dq = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %reass.sub.fr.i = freeze i64 %i.dr              ; 12 uses
  %.val34.i = load ptr, ptr %i.do, align 8, !tbaa !143 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 248 ; 3 uses
  %.val35.i = load ptr, ptr %i.ds, align 8, !tbaa !214
  %i.dt = ptrtoint ptr %.val35.i to i64
  %i.du = ptrtoint ptr %.val34.i to i64           ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ugt i64 %reass.sub.fr.i, %i.dv
  br i1 %i.dw, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZN7Imf_3_411FrameBufferaSERKS0_.exit
  %4 = sdiv exact i64 %reass.sub.fr.i, 48
  %i.dx = icmp ugt i64 %4, 192153584101141162
  br i1 %i.dx, label %bb.bd, label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, !prof !215

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc60 unwind label %bb.bo

.noexc60:                                         ; preds = %bb.bd
  unreachable

_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.bc
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #25
          to label %.noexc61 unwind label %bb.bo  ; 3 uses

.noexc61:                                         ; preds = %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.av
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc61
  %i.dz = add i64 %reass.sub.fr.i, -48
  %i.ea = urem i64 %i.dz, 48
  %i.eb = sub i64 %reass.sub.fr.i, %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr readonly align 8 %i.aw, i64 %i.eb, i1 false)
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i.i, %.noexc61
  %i.ec = load ptr, ptr %i.do, align 8, !tbaa !143 ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i59, label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !214
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #26
  br label %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit.i
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !143
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dy, i64 %reass.sub.fr.i
  store ptr %i.eh, ptr %i.ds, align 8, !tbaa !214
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bf:                                            ; preds = %_ZN7Imf_3_411FrameBufferaSERKS0_.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 240 ; 2 uses
  %.val30.i = load ptr, ptr %i.ei, align 8, !tbaa !144
  %i.ej = ptrtoint ptr %.val30.i to i64
  %i.ek = sub i64 %i.ej, %i.du                    ; 4 uses
  %.not24.i = icmp ult i64 %i.ek, %reass.sub.fr.i
  br i1 %.not24.i, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.el = icmp sgt i64 %reass.sub.fr.i, 48
  br i1 %i.el, label %bb.bh, label %bb.bi, !prof !216

bb.bh:                                            ; preds = %bb.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %i.aw, i64 %reass.sub.fr.i, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.em = icmp eq i64 %reass.sub.fr.i, 48
  br i1 %i.em, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread: ; preds = %bb.bi
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(44) %i.aw, i64 44, i1 false), !tbaa.struct !206
  %i.en = load ptr, ptr %i.do, align 8, !tbaa !143
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %reass.sub.fr.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !144
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bf
  %i.eq = icmp sgt i64 %i.ek, 48
  br i1 %i.eq, label %bb.bk, label %bb.bl, !prof !216

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.val34.i, ptr align 8 %i.aw, i64 %i.ek, i1 false)
  br label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.er = icmp eq i64 %i.ek, 48
  br i1 %i.er, label %bb.bm, label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i

bb.bm:                                            ; preds = %bb.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.val34.i, ptr noundef nonnull readonly align 8 dereferenceable(44) %i.aw, i64 44, i1 false), !tbaa.struct !206
  br label %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i

_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk
  %.val25.i = load ptr, ptr %i.do, align 8, !tbaa !143
  %.val26.i = load ptr, ptr %i.ei, align 8, !tbaa !144 ; 2 uses
  %i.es = ptrtoint ptr %.val26.i to i64
  %i.et = ptrtoint ptr %.val25.i to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.eu ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.ev, %i.av
  br i1 %.not9.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %.val26.i, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %i.ev, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(48) %.0810.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !206
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 48 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.ew, %i.av
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !196

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt4copyIPN7Imf_3_412_GLOBAL__N_113TOutSliceInfoES3_ET0_T_S5_S4_.exit.i, %bb.bi, %bb.bh, %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %i.ey = load ptr, ptr %i.do, align 8, !tbaa !143
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %reass.sub.fr.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !144
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i.thread, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.fb = ptrtoint ptr %i.au to i64
  %i.fc = sub i64 %i.fb, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.fc) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i, %bb.bn
  %i.fd = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 0 uses
  ret void

bb.bo:                                            ; preds = %_ZNSt12_Vector_baseIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EE11_M_allocateEm.exit.i.i, %bb.bd, %bb.al
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.am, %bb.aw, %bb.av, %bb.bo, %.loopexit.split-lp141, %.loopexit140, %.loopexit.split-lp, %.loopexit
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.cb, %bb.av ], [ %i.cc, %bb.aw ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp141 ], [ %i.fe, %bb.bo ], [ %i.bc, %bb.am ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit63, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ff = ptrtoint ptr %i.au to i64
  %i.fg = ptrtoint ptr %i.aw to i64
  %i.fh = sub i64 %i.ff, %i.fg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.fh) #26
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit63

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_113TOutSliceInfoESaIS2_EED2Ev.exit63: ; preds = %bb.bq, %bb.bp, %.thread, %.loopexit146, %.loopexit.split-lp147, %bb.g, %bb.h, %bb.ai, %bb.x, %bb.l, %bb.f
  %.pn29.pn.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %lpad.loopexit.split-lp149, %.loopexit.split-lp147 ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %.pn29.pn, %bb.x ], [ %i.q, %bb.l ], [ %.pn26.pn, %bb.ai ], [ %lpad.loopexit148, %.loopexit146 ], [ %i.bb, %.thread ], [ %.pn.pn.pn.ph, %bb.bp ], [ %.pn.pn.pn.ph, %bb.bq ]
  %i.fi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 0 uses
  resume { ptr, i32 } %.pn29.pn.pn.pn.pn

bb.br:                                            ; preds = %bb.ad, %bb.s
  unreachable
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_411FrameBuffer4findEPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK7Imf_3_411FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_Z13iex_debugTrapv() local_unnamed_addr #4

declare void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_415TiledOutputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #29
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 0 uses
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_415TiledOutputFile10writeTilesEiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %10 = alloca %"class.IlmThread_3_4::TaskGroup", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #29
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %.val125 = load ptr, ptr %i.f, align 8, !tbaa !143
  %i.g = getelementptr i8, ptr %i.e, i64 240
  %.val126 = load ptr, ptr %i.g, align 8, !tbaa !144
  %i.h = icmp eq ptr %.val126, %.val125
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 72) #24 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.e

end_hunk_0
