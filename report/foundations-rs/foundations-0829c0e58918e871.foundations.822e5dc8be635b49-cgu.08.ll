Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.08?download=true
inline.NumInlined: 1438
inline.NumDeleted: 712
begin_hunk_0_@_RNvMsp_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBx_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBO_3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtB1t_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4v_DNtNtBO_5error5ErrorNtNtBO_6marker4SendNtB8i_4SyncEL_EEEzEB8g_EL_EEB8g_B8z_EL_E11from_box_inB30_:bb.a
  br i1 %i.k, label %bb.d, label %bb.e, !dbg !12913, !prof !995

bb.d:                                             ; preds = %_RNCNvMsp_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBz_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBQ_3pin3PinINtNtB9_5boxed3BoxDNtNtNtBQ_6future6future6Futurep6OutputINtNtBQ_6result6ResultINtNtB1v_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4x_DNtNtBQ_5error5ErrorNtNtBQ_6marker4SendNtB8k_4SyncEL_EEEzEB8i_EL_EEB8i_B8B_EL_E19allocate_for_ptr_in0B32_.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.f, i64 noundef %i.g) #33
          to label %.noexc8 unwind label %bb.g, !dbg !12914

.noexc8:                                          ; preds = %bb.d
  unreachable, !dbg !12914

bb.e:                                             ; preds = %_RNCNvMsp_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEIBz_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtBQ_3pin3PinINtNtB9_5boxed3BoxDNtNtNtBQ_6future6future6Futurep6OutputINtNtBQ_6result6ResultINtNtB1v_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIB4x_DNtNtBQ_5error5ErrorNtNtBQ_6marker4SendNtB8k_4SyncEL_EEEzEB8i_EL_EEB8i_B8B_EL_E19allocate_for_ptr_in0B32_.exit.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8, !dbg !12915
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8, !dbg !12916
  store i64 1, ptr %i.l, align 8, !dbg !12916
  %i.m = add nsw i64 %i.d, -1, !dbg !12917        ; 3 uses
  %i.n = and i64 %i.m, -16, !dbg !12917
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.n, !dbg !12917
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !12917
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %0, i64 %i.b, i1 false), !dbg !12918
  %i.q = add nuw i64 %i.m, %i.b, !dbg !12919
  %i.r = sub nsw i64 0, %i.d, !dbg !12919         ; 2 uses
  %i.s = and i64 %i.q, %i.r, !dbg !12919
  %i.t = add nuw i64 %i.s, %i.m, !dbg !12919
  %i.u = and i64 %i.t, %i.r, !dbg !12919          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0, !dbg !12920
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtB4_3mem13manually_drop12ManuallyDropDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEINtNtBG_4sync3ArcNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2o_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIBC_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9b_4SyncEL_EEEzEB99_EL_EEB99_B9s_EL_ERNtNtBG_5alloc6GlobalEEB48_.exit, label %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !12920

_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 0, -9223372035781033986) %i.u, i64 noundef range(i64 1, 536870913) %i.d) #25, !dbg !12921
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtB4_3mem13manually_drop12ManuallyDropDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEINtNtBG_4sync3ArcNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2o_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIBC_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9b_4SyncEL_EEEzEB99_EL_EEB99_B9s_EL_ERNtNtBG_5alloc6GlobalEEB48_.exit, !dbg !12922

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtB4_3mem13manually_drop12ManuallyDropDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEINtNtBG_4sync3ArcNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB2o_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIBC_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB9b_4SyncEL_EEEzEB99_EL_EEB99_B9s_EL_ERNtNtBG_5alloc6GlobalEEB48_.exit: ; preds = %_RNvXs0_NtCs3oUPovFnLWP_4core5allocRNtNtCs1xwejQucwHj_5alloc5alloc6GlobalNtB5_9Allocator10deallocateCsbaWXNhtWAp9_11foundations.exit.i.i, %bb.e
  %i.w = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i.i.i.i, 0, !dbg !12923
  %i.x = insertvalue { ptr, ptr } %i.w, ptr %1, 1, !dbg !12923
  ret { ptr, ptr } %i.x, !dbg !12924

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y, !dbg !12925

bb.g:                                             ; preds = %bb.d, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTINtNtCs74LoFwSioHw_4http7request7RequestNtNtNtCsaCYLheajBls_5hyper4body8incoming8IncomingEINtNtBG_4sync3ArcNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB1H_8response8ResponseINtNtNtCsefgzIPu8p8D_14http_body_util11combinators8box_body7BoxBodyNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesIBC_DNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB8u_4SyncEL_EEEzEB8s_EL_EEB8s_B8L_EL_EEB3r_(ptr nonnull %0, ptr nonnull %1) #31
          to label %bb.f unwind label %bb.h, !dbg !12926

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !12925
  unreachable, !dbg !12925
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvNtCsbaWXNhtWAp9_11foundations9telemetry14is_initialized() unnamed_addr #12 !dbg !636 {
bb.a:
  %i.a = load atomic i8, ptr @_RNvNtCsbaWXNhtWAp9_11foundations9telemetry21TELEMETRY_INITIALIZED.0 monotonic, align 1, !dbg !12929
  %i.b = icmp ne i8 %i.a, 0, !dbg !12930
  ret i1 %i.b, !dbg !12931
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbaWXNhtWAp9_11foundations9telemetry4init(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12932 {
bb.a:
  %.sroa.5.i = alloca [32 x i8], align 8          ; 2 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.425.i.i.i = alloca [30 x i8], align 2    ; 4 uses
  %.sroa.523.i.i.i = alloca [104 x i8], align 8   ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 9 uses
  %i.c = alloca [116 x i8], align 4               ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 14 uses
  %.sroa.6.i = alloca [30 x i8], align 2          ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [136 x i8], align 8               ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [4 x i8], align 4                 ; 7 uses
  %i.k = alloca [176 x i8], align 8               ; 6 uses
  %i.l = alloca [272 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [56 x i8], align 8                ; 11 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [32 x i8], align 4                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 15 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [4 x i8], align 4                ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [8 x i8], align 8                ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.07.i.i = alloca [24 x i8], align 8       ; 4 uses
  %.sroa.5.sroa.0.i.i = alloca [30 x i8], align 2 ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.57.i = alloca [30 x i8], align 2         ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.53.i = alloca [16 x i8], align 8         ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [64 x i8], align 8               ; 12 uses
  %i.ao = alloca [112 x i8], align 8              ; 14 uses
  %i.ap = alloca [80 x i8], align 8               ; 12 uses
  %i.aq = alloca [80 x i8], align 8               ; 11 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [40 x i8], align 8               ; 8 uses
  %i.at = alloca [40 x i8], align 8               ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [600 x i8], align 8              ; 20 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [608 x i8], align 8              ; 5 uses
  %i.bb = alloca [144 x i8], align 8              ; 7 uses
  %i.bc = alloca [608 x i8], align 8              ; 5 uses
  %i.bd = alloca [144 x i8], align 8              ; 7 uses
  %i.be = alloca [96 x i8], align 8               ; 6 uses
  %i.bf = alloca [48 x i8], align 8               ; 9 uses
  %i.bg = alloca [96 x i8], align 8               ; 10 uses
  %i.bh = alloca [608 x i8], align 8              ; 5 uses
  %i.bi = alloca [112 x i8], align 8              ; 7 uses
  %i.bj = alloca [608 x i8], align 8              ; 5 uses
  %i.bk = alloca [112 x i8], align 8              ; 7 uses
  %i.bl = alloca [64 x i8], align 8               ; 6 uses
  %i.bm = alloca [48 x i8], align 8               ; 9 uses
  %i.bn = alloca [64 x i8], align 8               ; 10 uses
  %i.bo = alloca [608 x i8], align 8              ; 5 uses
  %i.bp = alloca [120 x i8], align 8              ; 7 uses
  %i.bq = alloca [608 x i8], align 8              ; 5 uses
  %i.br = alloca [120 x i8], align 8              ; 7 uses
  %i.bs = alloca [632 x i8], align 8              ; 4 uses
  %i.bt = alloca [592 x i8], align 8              ; 4 uses
  %i.bu = alloca [632 x i8], align 8              ; 4 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [584 x i8], align 8              ; 7 uses
  %i.bx = alloca [592 x i8], align 8              ; 9 uses
  %i.by = alloca [608 x i8], align 8              ; 5 uses
  %i.bz = alloca [120 x i8], align 8              ; 7 uses
  %i.ca = alloca [608 x i8], align 8              ; 5 uses
  %i.cb = alloca [120 x i8], align 8              ; 7 uses
  %i.cc = alloca [64 x i8], align 8               ; 10 uses
  %i.cd = alloca [608 x i8], align 8              ; 5 uses
  %i.ce = alloca [40 x i8], align 8               ; 4 uses
  %i.cf = alloca [56 x i8], align 8               ; 10 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 6 uses
  %i.ci = alloca [600 x i8], align 8              ; 5 uses
  %.sroa.0164.i = alloca [48 x i8], align 8       ; 7 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [32 x i8], align 8               ; 4 uses
  %i.cm = alloca [72 x i8], align 8               ; 12 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [104 x i8], align 8              ; 10 uses
  %i.cp = alloca [32 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 6 uses
  %i.cr = alloca [32 x i8], align 8               ; 7 uses
  %i.cs = alloca [40 x i8], align 8               ; 7 uses
  %i.ct = alloca [80 x i8], align 16              ; 8 uses
  %i.cu = alloca [80 x i8], align 16              ; 9 uses
  %i.cv = alloca [24 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 7 uses
  %i.cx = alloca [72 x i8], align 8               ; 10 uses
  %i.cy = alloca [32 x i8], align 8               ; 6 uses
  %i.cz = alloca [80 x i8], align 16              ; 8 uses
  %i.da = alloca [80 x i8], align 16              ; 9 uses
  %i.db = alloca [40 x i8], align 8               ; 6 uses
  %.sroa.0.i = alloca [568 x i8], align 8         ; 9 uses
  %.sroa.19.i = alloca [47 x i8], align 1         ; 10 uses
  %i.dc = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.0122.i = alloca [568 x i8], align 8      ; 5 uses
  %.sroa.7.i = alloca [7 x i8], align 1           ; 5 uses
  %i.dd = alloca [64 x i8], align 8               ; 10 uses
  %i.de = alloca [80 x i8], align 8               ; 10 uses
  %i.df = alloca [24 x i8], align 8               ; 4 uses
  %i.dg = alloca [24 x i8], align 8               ; 10 uses
  %i.dh = alloca [48 x i8], align 8               ; 8 uses
  %i.di = alloca [24 x i8], align 8               ; 10 uses
  %i.dj = alloca [256 x i8], align 8              ; 14 uses
  %.sroa.12 = alloca [24 x i8], align 8           ; 5 uses
  %i.dk = alloca [40 x i8], align 8               ; 13 uses
  %i.dl = alloca [48 x i8], align 8               ; 9 uses
  %i.dm = alloca [4 x i8], align 4                ; 4 uses
  %i.dn = alloca [4 x i8], align 4                ; 4 uses
  %i.do = alloca [16 x i8], align 8               ; 5 uses
  %i.dp = alloca [24 x i8], align 8               ; 2 uses
  %i.dq = load atomic i8, ptr @_RNvNtCsbaWXNhtWAp9_11foundations9telemetry21TELEMETRY_INITIALIZED.0 monotonic, align 1, !dbg !14410
  %.not219 = icmp eq i8 %i.dq, 0, !dbg !14411
  br i1 %.not219, label %bb.c, label %bb.d, !dbg !14412

.body.a:                                          ; preds = %bb.b, %.thread, %bb.cf
  %.sroa.022.0 = phi i8 [ %.sroa.022.5.lpad-body, %bb.cf ], [ %.sroa.022.2171, %.thread ], [ %.sroa.022.1, %bb.b ], !dbg !14413
  %.pn52 = phi { ptr, i32 } [ %eh.lpad-body95, %bb.cf ], [ %.pn50172, %.thread ], [ %i.dr, %bb.b ] ; 2 uses
  %3 = trunc nuw i8 %.sroa.022.0 to i1, !dbg !14414
  br i1 %3, label %.body.thread, label %common.resume, !dbg !14414

bb.b:                                             ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations.exit, %bb.ci, %bb.f, %bb.c
  %.sroa.022.1 = phi i8 [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit ], [ 1, %bb.d ], [ 1, %bb.ci ], [ %.sroa.022.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations.exit ], [ 1, %bb.c ], [ 1, %bb.f ], !dbg !14413
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body.a

bb.c:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14415 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !dbg !14415, !nonnull !734, !align !858, !noundef !734
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14416 ; 4 uses
  %i.dv = load ptr, ptr %i.du, align 8, !dbg !14416, !nonnull !734, !align !858, !noundef !734
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64, !dbg !14416
  %i.dx = invoke noundef ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics4init4init(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.dt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dw)
          to label %bb.e unwind label %bb.b, !dbg !14112 ; 2 uses

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !dbg !14417
  %i.dy = load ptr, ptr %2, align 8, !dbg !14418, !nonnull !734, !noundef !734
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !14418
  %i.ea = load i64, ptr %i.dz, align 8, !dbg !14418, !noundef !734
  store ptr %i.dy, ptr %i.do, align 8, !dbg !14419
  %i.eb = getelementptr inbounds nuw i8, ptr %i.do, i64 8, !dbg !14419
  store i64 %i.ea, ptr %i.eb, align 8, !dbg !14419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !dbg !14420
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !14421
  %i.ed = load i32, ptr %i.ec, align 8, !dbg !14421, !noundef !734
  store i32 %i.ed, ptr %i.dn, align 4, !dbg !14421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !dbg !14422
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 20, !dbg !14423
  %i.ef = load i32, ptr %i.ee, align 4, !dbg !14423, !noundef !734
  store i32 %i.ef, ptr %i.dm, align 4, !dbg !14423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !dbg !14424
  store ptr %i.do, ptr %i.dl, align 8, !dbg !14424
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8, !dbg !14424
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsbaWXNhtWAp9_11foundations, ptr %.sroa.429.0..sroa_idx, align 8, !dbg !14424
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 16, !dbg !14424
  store ptr %i.dn, ptr %i.eg, align 8, !dbg !14424
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24, !dbg !14424
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !14424
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dl, i64 32, !dbg !14424
  store ptr %i.dm, ptr %i.eh, align 8, !dbg !14424
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 40, !dbg !14424
  store ptr @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8, !dbg !14424
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dp, ptr noundef nonnull @71, ptr noundef nonnull %i.dl)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit unwind label %bb.b, !dbg !14425

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.dx, null, !dbg !14426
  br i1 %.not, label %bb.f, label %.sink.split, !dbg !14427

bb.f:                                             ; preds = %bb.e
  %i.ei = invoke noundef zeroext i1 @_RNvNtNtCsbaWXNhtWAp9_11foundations5panic4hook12install_hook()
          to label %bb.g unwind label %bb.b, !dbg !14428 ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !dbg !14429, !noalias !14113
  store i64 1, ptr %i.de, align 8, !dbg !14429, !noalias !14113
  %i.ej = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !14429
  store i64 1, ptr %i.ej, align 8, !dbg !14429, !noalias !14113
  %i.ek = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !14429 ; 2 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ek, align 8, !dbg !14429, !noalias !14113
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 24, !dbg !14429
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !14429, !noalias !14113
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 40, !dbg !14429
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 72, !dbg !14429
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, i8 0, i64 32, i1 false), !dbg !14429, !noalias !14113
  store i8 1, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !14429, !noalias !14113
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 73, !dbg !14429
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 1, !dbg !14429, !noalias !14113
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !14430, !noalias !14116
  %i.el = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !14431, !noalias !14116 ; 4 uses
  %i.em = icmp eq ptr %i.el, null, !dbg !14432
  br i1 %i.em, label %bb.h, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4task4TaskINtNtCs3oUPovFnLWP_4core3pin3PinIBv_DNtNtNtB2g_6future6future6Futurep6OutputINtNtB2g_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2g_6marker4SendEL_EEEEE3newCsbaWXNhtWAp9_11foundations.exit.i, !dbg !14433, !prof !890

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc.i unwind label %bb.i, !dbg !14434, !noalias !14113

.noexc.i:                                         ; preds = %bb.h
  unreachable, !dbg !14434

bb.i:                                             ; preds = %bb.h
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.ek)
          to label %.body.thread unwind label %bb.j, !dbg !14435, !noalias !14113

bb.j:                                             ; preds = %bb.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14436, !noalias !14113
  unreachable, !dbg !14436

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4task4TaskINtNtCs3oUPovFnLWP_4core3pin3PinIBv_DNtNtNtB2g_6future6future6Futurep6OutputINtNtB2g_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2g_6marker4SendEL_EEEEE3newCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.el, ptr noundef nonnull align 8 dereferenceable(80) %i.de, i64 80, i1 false), !dbg !14437, !noalias !14113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !14438, !noalias !14113
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 16, !dbg !14439 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64, !dbg !14440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !dbg !14441, !noalias !14113
  store i64 1, ptr %i.dd, align 8, !dbg !14441, !noalias !14113
  %i.er = getelementptr inbounds nuw i8, ptr %i.dd, i64 8, !dbg !14441
  store i64 1, ptr %i.er, align 8, !dbg !14441, !noalias !14113
  %i.es = getelementptr inbounds nuw i8, ptr %i.dd, i64 16, !dbg !14441 ; 2 uses
  store ptr %i.el, ptr %i.es, align 8, !dbg !14441, !noalias !14113
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 24, !dbg !14441
  store ptr null, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !14441, !noalias !14113
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 40, !dbg !14441
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i, align 8, !dbg !14441, !noalias !14113
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 48, !dbg !14441
  store i64 %i.eq, ptr %.sroa.57.0..sroa_idx.i, align 8, !dbg !14441, !noalias !14113
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 56, !dbg !14441
  store ptr %i.ep, ptr %.sroa.68.0..sroa_idx.i, align 8, !dbg !14441, !noalias !14113
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !14442, !noalias !14117
  %i.et = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !14443, !noalias !14117 ; 3 uses
  %i.eu = icmp eq ptr %i.et, null, !dbg !14444
  br i1 %i.eu, label %bb.k, label %bb.n, !dbg !14445, !prof !890

bb.k:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4task4TaskINtNtCs3oUPovFnLWP_4core3pin3PinIBv_DNtNtNtB2g_6future6future6Futurep6OutputINtNtB2g_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2g_6marker4SendEL_EEEEE3newCsbaWXNhtWAp9_11foundations.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #33
          to label %.noexc19.i unwind label %bb.l, !dbg !14446, !noalias !14113

.noexc19.i:                                       ; preds = %bb.k
  unreachable, !dbg !14446

bb.l:                                             ; preds = %bb.k
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(48) %i.es)
          to label %.body.thread unwind label %bb.m, !dbg !14447, !noalias !14113

bb.m:                                             ; preds = %bb.l
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14448, !noalias !14113
  unreachable, !dbg !14448

bb.n:                                             ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4task4TaskINtNtCs3oUPovFnLWP_4core3pin3PinIBv_DNtNtNtB2g_6future6future6Futurep6OutputINtNtB2g_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2g_6marker4SendEL_EEEEE3newCsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.et, ptr noundef nonnull align 8 dereferenceable(64) %i.dd, i64 64, i1 false), !dbg !14449, !noalias !14113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !dbg !14450, !noalias !14113
  store ptr %i.et, ptr %i.dg, align 8, !dbg !14451
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !14451 ; 2 uses
  store i64 0, ptr %i.ex, align 8, !dbg !14451
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dg, i64 16, !dbg !14451 ; 2 uses
  store i8 0, ptr %i.ey, align 8, !dbg !14451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !dbg !14452
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12), !dbg !14121
  %i.ez = load ptr, ptr %i.ds, align 8, !dbg !14453, !nonnull !734, !align !858, !noundef !734 ; 2 uses
  %i.fa = load ptr, ptr %i.du, align 8, !dbg !14454, !nonnull !734, !align !858, !noundef !734 ; 23 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14118), !dbg !14121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14119), !dbg !14121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !14455
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0164.i), !dbg !14455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !14455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !14455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !14455
  %i.fb = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init7HARNESS, i64 600) acquire, align 8, !dbg !14455, !noalias !14120
  %i.fc = icmp eq i32 %i.fb, 0, !dbg !14456
  br i1 %i.fc, label %.thread177, label %bb.o, !dbg !14457

.thread177:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0164.i), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !14458
  br label %bb.cj, !dbg !14459

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i), !dbg !14460
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i), !dbg !14460
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24, !dbg !14461 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 56, !dbg !14462
  %i.ff = load i8, ptr %i.fe, align 8, !dbg !14463, !range !766, !alias.scope !14119, !noundef !734 ; 2 uses
  %i.fg = trunc nuw i8 %i.ff to i1, !dbg !14463
  %i.fh = load i64, ptr %i.fd, align 8, !dbg !14463, !range !880, !alias.scope !14119, !noundef !734 ; 6 uses
  %i.fi = icmp ne i64 %i.fh, -9223372036854775806, !dbg !14463
  tail call void @llvm.assume(i1 %i.fi), !dbg !14463
  %i.fj = xor i64 %i.fh, -9223372036854775808, !dbg !14463
  %i.fk = icmp slt i64 %i.fh, 0, !dbg !14463
  %i.fl = select i1 %i.fk, i64 %i.fj, i64 2, !dbg !14463 ; 2 uses
  br i1 %i.fg, label %bb.p, label %bb.q, !dbg !14460

bb.p:                                             ; preds = %bb.o
  switch i64 %i.fl, label %bb.r [
    i64 0, label %bb.am
    i64 1, label %bb.am
    i64 2, label %bb.an
    i64 3, label %bb.u
  ], !dbg !14460

bb.q:                                             ; preds = %bb.o
  switch i64 %i.fl, label %bb.r [
    i64 0, label %bb.s
    i64 1, label %bb.s
    i64 2, label %bb.t
    i64 3, label %bb.u
  ], !dbg !14460

bb.r:                                             ; preds = %bb.q, %bb.p
  unreachable, !dbg !14464

bb.s:                                             ; preds = %bb.q, %bb.q
  %i.fm = icmp ne i64 %i.fh, -9223372036854775808, !dbg !14465
  invoke void @_RNvMst_Csgwhc9xWyoN8_9slog_termNtB5_20TermDecoratorBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.db, i1 noundef zeroext %i.fm, i8 noundef 2)
          to label %.noexc unwind label %bb.cg, !dbg !14466
end_hunk_0
begin_hunk_1_@_RNvNtCsbaWXNhtWAp9_11foundations9telemetry4init:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.lw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14694, !noalias !14149
  unreachable, !dbg !14694

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lt, ptr noundef nonnull align 8 dereferenceable(64) %i.cc, i64 64, i1 false), !dbg !14695, !noalias !14149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !14696, !noalias !14120
  store ptr %i.lt, ptr %i.cj, align 8, !dbg !14697, !noalias !14120
  call void @llvm.experimental.noalias.scope.decl(metadata !14221), !dbg !14698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !14699, !noalias !14222
  call void @llvm.experimental.noalias.scope.decl(metadata !14223), !dbg !14699
  call void @llvm.experimental.noalias.scope.decl(metadata !14224), !dbg !14699
  %i.lx = load i64, ptr %i.fd, align 8, !dbg !14700, !range !880, !alias.scope !14225, !noundef !734 ; 3 uses
  %i.ly = icmp ne i64 %i.lx, -9223372036854775806, !dbg !14700
  call void @llvm.assume(i1 %i.ly), !dbg !14700
  %i.lz = xor i64 %i.lx, -9223372036854775808, !dbg !14700
  %i.ma = icmp slt i64 %i.lx, 0, !dbg !14700
  %i.mb = select i1 %i.ma, i64 %i.lz, i64 2, !dbg !14700
  switch i64 %i.mb, label %bb.bm [
    i64 0, label %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i
    i64 1, label %bb.bn
    i64 2, label %bb.bo
    i64 3, label %bb.bp
  ], !dbg !14700

bb.bm:                                            ; preds = %bb.bl
  unreachable, !dbg !14700

bb.bn:                                            ; preds = %bb.bl
  br label %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i, !dbg !14700

bb.bo:                                            ; preds = %bb.bl
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.bv, !dbg !14701, !noalias !14149

bb.bp:                                            ; preds = %bb.bl
  %i.mc = getelementptr inbounds nuw i8, ptr %i.fa, i64 32, !dbg !14702
  %i.md = load ptr, ptr %i.mc, align 8, !dbg !14702, !alias.scope !14225, !nonnull !734, !noundef !734 ; 2 uses
  %i.me = atomicrmw add ptr %i.md, i64 1 monotonic, align 8, !dbg !14703, !noalias !14226
  %i.mf = icmp slt i64 %i.me, 0, !dbg !14704
  br i1 %i.mf, label %bb.br, label %bb.bq, !dbg !14704

bb.bq:                                            ; preds = %bb.bp
  %i.mg = getelementptr inbounds nuw i8, ptr %i.fa, i64 40, !dbg !14702
  %i.mh = load ptr, ptr %i.mg, align 8, !dbg !14705, !alias.scope !14225, !nonnull !734, !align !858, !noundef !734
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !14706
  store ptr %i.md, ptr %i.mi, align 8, !dbg !14706, !alias.scope !14223, !noalias !14222
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !14706
  store ptr %i.mh, ptr %i.mj, align 8, !dbg !14706, !alias.scope !14223, !noalias !14222
  br label %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i, !dbg !14707

bb.br:                                            ; preds = %bb.bp
  call void @llvm.trap(), !dbg !14708
  unreachable, !dbg !14708

_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i: ; preds = %bb.bq, %bb.bn, %bb.bl
  %.sink174.i = phi i64 [ -9223372036854775805, %bb.bq ], [ -9223372036854775807, %bb.bn ], [ -9223372036854775808, %bb.bl ]
  store i64 %.sink174.i, ptr %i.ay, align 8, !dbg !14700, !alias.scope !14223, !noalias !14222
  br label %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !dbg !14709

_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.sink.split.i, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !14709, !noalias !14222
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fa)
          to label %bb.bw unwind label %bb.bs, !dbg !14709, !noalias !14227

bb.bs:                                            ; preds = %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %i.mk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7logging9LogOutputEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #31
          to label %.body107.i unwind label %bb.bt, !dbg !14710, !noalias !14227

bb.bt:                                            ; preds = %bb.bs
  %i.ml = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14711, !noalias !14227
  unreachable, !dbg !14711

.body107.i:                                       ; preds = %bb.bv, %bb.bs
  %.pn.i = phi { ptr, i32 } [ %i.mk, %bb.bs ], [ %i.mo, %bb.bv ] ; 2 uses
  %i.mm = atomicrmw add ptr %i.lt, i64 -1 release, align 8, !dbg !14712, !noalias !14228
  %i.mn = icmp eq i64 %i.mm, 1, !dbg !14713
  br i1 %i.mn, label %bb.bu, label %.body.i, !dbg !14713

bb.bu:                                            ; preds = %.body107.i
  fence acquire, !dbg !14714
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cj) #32
          to label %.body.i unwind label %bb.cc, !dbg !14715, !noalias !14149

bb.bv:                                            ; preds = %bb.bo
  %i.mo = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i

bb.bw:                                            ; preds = %_RNvXsj_NtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings7loggingNtB5_9LogOutputNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %i.mp = getelementptr inbounds nuw i8, ptr %i.fa, i64 57, !dbg !14716
  %i.mq = load i8, ptr %i.mp, align 1, !dbg !14716, !range !766, !alias.scope !14229, !noundef !734
  %i.mr = getelementptr inbounds nuw i8, ptr %i.fa, i64 48, !dbg !14717
  %i.ms = load i32, ptr %i.mr, align 8, !dbg !14717, !alias.scope !14229, !noundef !734
  %i.mt = getelementptr inbounds nuw i8, ptr %i.fa, i64 52, !dbg !14717
  %i.mu = load i8, ptr %i.mt, align 4, !dbg !14717, !range !766, !alias.scope !14229, !noundef !734
  %.sroa.0164.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0164.i, i64 24, !dbg !14711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0164.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !dbg !14711, !noalias !14120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0164.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !dbg !14711, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !14710, !noalias !14222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !14710, !noalias !14222
  %.sroa.7132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 88, !dbg !14718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !14719, !noalias !14230
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %.sroa.7132.0..sroa_idx.i, i8 0, i64 504, i1 false), !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !14720, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !14720, !noalias !14120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !14721, !noalias !14120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0164.i, i64 48, i1 false), !dbg !14718, !noalias !14120
  %.sroa.0129.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 48, !dbg !14718
  store i32 %i.ms, ptr %.sroa.0129.sroa.4.0..sroa_idx.i, align 8, !dbg !14718, !noalias !14231
  %.sroa.0129.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 52, !dbg !14718
  store i8 %i.mu, ptr %.sroa.0129.sroa.5.0..sroa_idx.i, align 4, !dbg !14718, !noalias !14231
  %.sroa.0129.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 56, !dbg !14718
  store i8 %i.ff, ptr %.sroa.0129.sroa.7.0..sroa_idx.i, align 8, !dbg !14718, !noalias !14231
  %.sroa.0129.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 57, !dbg !14718
  store i8 %i.mq, ptr %.sroa.0129.sroa.8.0..sroa_idx.i, align 1, !dbg !14718, !noalias !14231
  %.sroa.0129.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 58, !dbg !14718
  store i8 %i.hb, ptr %.sroa.0129.sroa.9.0..sroa_idx.i, align 2, !dbg !14718, !noalias !14231
  %.sroa.0129.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 59, !dbg !14718
  store i8 %i.ll, ptr %.sroa.0129.sroa.10.0..sroa_idx.i, align 1, !dbg !14718, !noalias !14231
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.aw, i64 64, !dbg !14718
  store ptr %i.lt, ptr %.sroa.4.0..sroa_idx.i57, align 8, !dbg !14718, !noalias !14231
  %.sroa.5130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 72, !dbg !14718
  store ptr %.sroa.0.0.i.i, ptr %.sroa.5130.0..sroa_idx.i, align 8, !dbg !14718, !noalias !14231
  %.sroa.6131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 80, !dbg !14718
  store ptr %.sroa.3.0.i.i, ptr %.sroa.6131.0..sroa_idx.i, align 8, !dbg !14718, !noalias !14231
  %.sroa.7132.sroa.4.0..sroa.7132.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 592, !dbg !14718
  store i64 0, ptr %.sroa.7132.sroa.4.0..sroa.7132.0..sroa_idx.sroa_idx.i, align 8, !dbg !14718, !noalias !14231
  %i.mv = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init7HARNESS, i64 600) acquire, align 8, !dbg !14722, !noalias !14232
  %i.mw = icmp eq i32 %i.mv, 0, !dbg !14723
  br i1 %i.mw, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEB11_.exit.i.i, label %bb.bx, !dbg !14724, !prof !755

bb.bx:                                            ; preds = %bb.bw
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.aw)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEB11_.exit.i.i unwind label %bb.by, !dbg !14725, !noalias !14233

bb.by:                                            ; preds = %bb.bx
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = load i64, ptr %i.aw, align 8, !dbg !14726, !range !760, !alias.scope !14234, !noalias !14230, !noundef !734
  %i.mz = icmp eq i64 %i.my, -1, !dbg !14726
  br i1 %i.mz, label %.body85.i, label %bb.bz, !dbg !14726

bb.bz:                                            ; preds = %bb.by
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.aw)
          to label %.body85.i unwind label %bb.ca, !dbg !14726, !noalias !14233

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEB11_.exit.i.i: ; preds = %bb.bx, %bb.bw
  %i.na = load i64, ptr %i.aw, align 8, !dbg !14727, !range !760, !noalias !14230, !noundef !734 ; 2 uses
  %.not.i.i = icmp eq i64 %i.na, -1, !dbg !14727
  br i1 %.not.i.i, label %.thread163.i, label %bb.cb, !dbg !14728

bb.ca:                                            ; preds = %bb.bz
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14729, !noalias !14233
  unreachable, !dbg !14729

.thread163.i:                                     ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEB11_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !14730, !noalias !14230
  br label %bb.ch, !dbg !14731

bb.cb:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessE15get_or_try_initNCINvB2_11get_or_initNCNvB2_10try_insert0E0zEB11_.exit.i.i
  %.sroa.7147.8..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !14732
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !14733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(592) %.sroa.4150.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(592) %.sroa.7147.8..sroa_idx148.i, i64 592, i1 false), !dbg !14732, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !14730, !noalias !14230
  store i64 %i.na, ptr %i.ci, align 8, !dbg !14733, !noalias !14120
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log4init10LogHarnessEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.ci)
          to label %bb.ch unwind label %bb.bc, !dbg !14731, !noalias !14149

bb.cc:                                            ; preds = %bb.ce, %bb.bu, %bb.bg, %.body85.i
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14734, !noalias !14149
  unreachable, !dbg !14734

bb.cd:                                            ; preds = %bb.be, %bb.bb
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nd = atomicrmw add ptr %.sroa.0.0.i.i, i64 -1 release, align 8, !dbg !14735, !noalias !14235
  %i.ne = icmp eq i64 %i.nd, 1, !dbg !14736
  br i1 %i.ne, label %bb.ce, label %.body85.i, !dbg !14736

bb.ce:                                            ; preds = %bb.cd
  fence acquire, !dbg !14737
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtCscuJkFUZt1a2_4slog26SendSyncRefUnwindSafeDrainp3ErrINtNtB7_5boxed3BoxDNtNtCs3oUPovFnLWP_4core3fmt5DebugEL_Ep2OkuEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.cn) #32
          to label %.body85.i unwind label %bb.cc, !dbg !14738, !noalias !14149

bb.cf:                                            ; preds = %.thread182
  br i1 %.sroa.025.2.lpad-body, label %.thread, label %.body.a, !dbg !14414

bb.cg:                                            ; preds = %.invoke255, %.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit.i, %bb.az, %bb.ay, %.noexc82, %bb.ax, %.noexc80, %bb.aw, %bb.at, %bb.aq, %.noexc74, %bb.ap, %.noexc72, %.noexc71, %bb.ao, %bb.an, %bb.al, %.noexc67, %bb.ak, %bb.aj, %bb.ag, %bb.w, %.noexc60, %bb.v, %bb.t, %.noexc, %bb.s
  %.sroa.022.3 = phi i8 [ %.sroa.022.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit.i ], [ 1, %bb.az ], [ 1, %bb.s ], [ 1, %.noexc ], [ 1, %bb.t ], [ 1, %bb.v ], [ 1, %.noexc60 ], [ 1, %bb.w ], [ 1, %.noexc82 ], [ 1, %bb.ag ], [ 1, %bb.ay ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %.noexc67 ], [ 1, %bb.al ], [ 1, %bb.an ], [ 1, %bb.ao ], [ 1, %.noexc71 ], [ 1, %.noexc72 ], [ 1, %bb.ap ], [ 1, %.noexc74 ], [ 1, %bb.aq ], [ 1, %.invoke255 ], [ 1, %bb.at ], [ 1, %.invoke ], [ 1, %bb.aw ], [ 1, %.noexc80 ], [ 1, %bb.ax ], !dbg !14413
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ch:                                            ; preds = %.thread163.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !14739, !noalias !14120
  %.sroa.0154.0.copyload = load i64, ptr %i.dc, align 8, !dbg !14740, !noalias !14236 ; 2 uses
  %.sroa.8155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !14740
  %.sroa.8155.0.copyload = load ptr, ptr %.sroa.8155.0..sroa_idx, align 8, !dbg !14740, !noalias !14236 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !14740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i64 24, i1 false), !dbg !14740, !noalias !14236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !14741, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !dbg !14742, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !14668, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !14664, !noalias !14120
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0122.i), !dbg !14664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i), !dbg !14664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0164.i), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !14458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !14458
  %i.ng = icmp eq i64 %.sroa.0154.0.copyload, -2, !dbg !14743
  br i1 %i.ng, label %bb.ci, label %bb.cj, !dbg !14459

bb.ci:                                            ; preds = %.thread173, %bb.ch
  %.sroa.8155.1176 = phi ptr [ %i.kb, %.thread173 ], [ %.sroa.8155.0.copyload, %bb.ch ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8155.1176) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !14744
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14745
  store ptr %.sroa.8155.1176, ptr %i.nh, align 8, !dbg !14745
  store i64 -1, ptr %0, align 8, !dbg !14745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !14746
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg)
          to label %bb.jn unwind label %bb.b, !dbg !14414

bb.cj:                                            ; preds = %.thread177, %bb.ch
  %.sroa.0154.0181 = phi i64 [ -1, %.thread177 ], [ %.sroa.0154.0.copyload, %bb.ch ]
  %.sroa.8155.1180 = phi ptr [ undef, %.thread177 ], [ %.sroa.8155.0.copyload, %bb.ch ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 16, !dbg !14747 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false), !dbg !14748
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12), !dbg !14744
  store i64 %.sroa.0154.0181, ptr %i.dk, align 8, !dbg !14747
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !14747 ; 2 uses
  store ptr %.sroa.8155.1180, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !14747
  %i.ni = load ptr, ptr %i.ds, align 8, !dbg !14749, !nonnull !734, !align !858, !noundef !734 ; 2 uses
  %i.nj = load ptr, ptr %i.du, align 8, !dbg !14750, !nonnull !734, !align !858, !noundef !734 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 96, !dbg !14750 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14239), !dbg !14250
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 202, !dbg !14751
  %i.nm = load i8, ptr %i.nl, align 2, !dbg !14751, !range !766, !alias.scope !14239, !noundef !734
  %i.nn = trunc nuw i8 %i.nm to i1, !dbg !14751
  br i1 %i.nn, label %bb.ck, label %.thread201, !dbg !14751

bb.ck:                                            ; preds = %bb.cj
  %i.no = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init7HARNESS, i64 1080) acquire, align 8, !dbg !14752, !noalias !14240
  %i.np = icmp eq i32 %i.no, 0, !dbg !14753
  br i1 %i.np, label %.thread201, label %bb.cl, !dbg !14754

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !14755, !noalias !14240
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init25create_tracer_and_span_rx(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.nk)
          to label %.noexc92 unwind label %bb.di, !dbg !14755

.noexc92:                                         ; preds = %bb.cl
  %i.nq = load ptr, ptr %i.au, align 8, !dbg !14756, !noalias !14240, !noundef !734 ; 3 uses
  %i.nr = icmp eq ptr %i.nq, null, !dbg !14756
  %i.ns = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !14757
  %i.nt = load ptr, ptr %i.ns, align 8, !dbg !14757, !noalias !14240 ; 4 uses
  br i1 %i.nr, label %bb.cm, label %bb.cn, !dbg !14758

bb.cm:                                            ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !14759, !noalias !14240
  br label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit.thread, !dbg !14760

bb.cn:                                            ; preds = %.noexc92
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !14761
  %.sroa.535.0.copyload.i = load i64, ptr %.sroa.535.0..sroa_idx.i, align 8, !dbg !14761, !noalias !14240
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !14761
  %.sroa.636.0.copyload.i = load ptr, ptr %.sroa.636.0..sroa_idx.i, align 8, !dbg !14761, !noalias !14240, !nonnull !734, !noundef !734 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !14759, !noalias !14240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !14762, !noalias !14240
  store ptr %i.nq, ptr %i.av, align 8, !dbg !14762, !noalias !14240
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !14762 ; 3 uses
  store ptr %i.nt, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !14762, !noalias !14240
  %.sroa.348.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !14762
  store i64 %.sroa.535.0.copyload.i, ptr %.sroa.348.0..sroa_idx.i, align 8, !dbg !14762, !noalias !14240
  %i.nu = load i16, ptr %i.nk, align 8, !dbg !14763, !range !879, !alias.scope !14239, !noundef !734
  %i.nv = icmp eq i16 %i.nu, 2, !dbg !14763
  br i1 %i.nv, label %bb.co, label %bb.cp, !dbg !14764

bb.co:                                            ; preds = %bb.cn
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nj, i64 104, !dbg !14765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !14766, !noalias !14240
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing16output_otlp_grpc5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ni, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.nw, ptr noundef nonnull %.sroa.636.0.copyload.i)
          to label %bb.dc unwind label %bb.dh, !dbg !14766, !noalias !14242

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !14767, !noalias !14240
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing24output_jaeger_thrift_udp5start(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ni, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.nk, ptr noundef nonnull %.sroa.636.0.copyload.i)
          to label %bb.cq unwind label %bb.dh, !dbg !14767, !noalias !14242

bb.cq:                                            ; preds = %bb.cp
  %i.nx = load i64, ptr %i.at, align 8, !dbg !14768, !range !760, !noalias !14240, !noundef !734 ; 2 uses
  %i.ny = icmp eq i64 %i.nx, -1, !dbg !14768
  %i.nz = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !14769
  %i.oa = load ptr, ptr %i.nz, align 8, !dbg !14769, !noalias !14240 ; 2 uses
  br i1 %i.ny, label %bb.cr, label %bb.cs, !dbg !14770

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !14771, !noalias !14240
  br label %bb.cw, !dbg !14772

bb.cs:                                            ; preds = %bb.cq
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16, !dbg !14773
  %.sroa.539.0.copyload.i = load i64, ptr %.sroa.539.0..sroa_idx.i, align 8, !dbg !14773, !noalias !14240
  %.sroa.640.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !14773
  %i.ob = load <2 x ptr>, ptr %.sroa.640.0..sroa_idx.i, align 8, !dbg !14773, !noalias !14240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !14771, !noalias !14240
  br label %bb.ct, !dbg !14774

bb.ct:                                            ; preds = %bb.de, %bb.cs
  %.sroa.5.0.i = phi i64 [ %.sroa.544.0.copyload.i, %bb.de ], [ %.sroa.539.0.copyload.i, %bb.cs ], !dbg !14775
  %.sroa.3.0.i = phi ptr [ %i.oq, %bb.de ], [ %i.oa, %bb.cs ], !dbg !14775
  %.sroa.021.0.i = phi i64 [ %i.on, %bb.de ], [ %i.nx, %bb.cs ], !dbg !14775
  %i.oc = phi <2 x ptr> [ %i.or, %bb.de ], [ %i.ob, %bb.cs ], !dbg !14775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !14776, !noalias !14240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false), !dbg !14777, !noalias !14240
  %.sroa.830.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !14778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !14778, !noalias !14240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.830.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !dbg !14779, !noalias !14240
  store i64 %.sroa.021.0.i, ptr %i.aq, align 8, !dbg !14778, !noalias !14240
  %.sroa.4.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !14778
  store ptr %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx.i90, align 8, !dbg !14778, !noalias !14240
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !14778
  store i64 %.sroa.5.0.i, ptr %.sroa.527.0..sroa_idx.i, align 8, !dbg !14778, !noalias !14240
  %.sroa.628.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !14778
  store ptr %i.nk, ptr %.sroa.628.0..sroa_idx.i, align 8, !dbg !14778, !noalias !14240
  %.sroa.729.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !14778
  store ptr %i.ar, ptr %.sroa.729.0..sroa_idx.i, align 8, !dbg !14778, !noalias !14240
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 64, !dbg !14778
  store <2 x ptr> %i.oc, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !14778, !noalias !14240
  %i.od = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init7HARNESS, i64 1080) acquire, align 8, !dbg !14780, !noalias !14244
  %i.oe = icmp eq i32 %i.od, 0, !dbg !14781
  br i1 %i.oe, label %bb.cv, label %bb.cu, !dbg !14782, !prof !755

bb.cu:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE10initializeNCINvB2_11get_or_initNCNvBV_4init0E0zEB11_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.aq)
          to label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit unwind label %bb.df, !dbg !14783, !noalias !14242

bb.cv:                                            ; preds = %bb.ct
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtBH_8OnceLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init14TracingHarnessE11get_or_initNCNvB1z_4init0E0EB1F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.aq)
          to label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit unwind label %bb.df, !dbg !14784, !noalias !14242

bb.cw:                                            ; preds = %bb.dd, %bb.cr
  %.sink.i = phi ptr [ %i.oq, %bb.dd ], [ %i.oa, %bb.cr ]
  %i.of = atomicrmw add ptr %i.nq, i64 -1 release, align 8, !dbg !14785, !noalias !14245
  %i.og = icmp eq i64 %i.of, 1, !dbg !14786
  br i1 %i.og, label %bb.cx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !14786

bb.cx:                                            ; preds = %bb.cw
  fence acquire, !dbg !14787
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2R_4SyncEL_EE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.av) #32
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.cy, !dbg !14788, !noalias !14242

bb.cy:                                            ; preds = %bb.cx
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oi = atomicrmw add ptr %i.nt, i64 -1 release, align 8, !dbg !14789, !noalias !14246
  %i.oj = icmp eq i64 %i.oi, 1, !dbg !14790
  br i1 %i.oj, label %bb.cz, label %.thread182, !dbg !14790

bb.cz:                                            ; preds = %bb.cy
  fence acquire, !dbg !14791
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCs26L2cHvO7VQ_13cf_rustracing4span12SpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i) #32
          to label %.thread182 unwind label %bb.db, !dbg !14792, !noalias !14242

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.cx, %bb.cw
  %i.ok = atomicrmw add ptr %i.nt, i64 -1 release, align 8, !dbg !14793, !noalias !14247
  %i.ol = icmp eq i64 %i.ok, 1, !dbg !14794
  br i1 %i.ol, label %bb.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations.exit.i, !dbg !14794

bb.da:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i
  fence acquire, !dbg !14795
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtCs26L2cHvO7VQ_13cf_rustracing4span12SpanConsumerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEL_E9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i) #32
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.di, !dbg !14796

bb.db:                                            ; preds = %bb.cz
  %i.om = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14797, !noalias !14248
  unreachable, !dbg !14797

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.da, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBG_5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3k_4SyncEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !14798, !noalias !14240
  br label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit.thread, !dbg !14760

bb.dc:                                            ; preds = %bb.co
  %i.on = load i64, ptr %i.as, align 8, !dbg !14799, !range !760, !noalias !14240, !noundef !734 ; 2 uses
  %i.oo = icmp eq i64 %i.on, -1, !dbg !14799
  %i.op = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !14800
  %i.oq = load ptr, ptr %i.op, align 8, !dbg !14800, !noalias !14240 ; 2 uses
  br i1 %i.oo, label %bb.dd, label %bb.de, !dbg !14801

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !14802, !noalias !14240
  br label %bb.cw, !dbg !14772

bb.de:                                            ; preds = %bb.dc
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !14803
  %.sroa.544.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !dbg !14803, !noalias !14240
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !14803
  %i.or = load <2 x ptr>, ptr %.sroa.645.0..sroa_idx.i, align 8, !dbg !14803, !noalias !14240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !14802, !noalias !14240
  br label %bb.ct, !dbg !14804

bb.df:                                            ; preds = %bb.cv, %bb.cu
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_uNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEB2Q_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar) #31
          to label %.thread182 unwind label %bb.dg, !dbg !14805, !noalias !14242

bb.dg:                                            ; preds = %bb.dh, %bb.df
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14806, !noalias !14242
  unreachable, !dbg !14806

bb.dh:                                            ; preds = %bb.cp, %bb.co
  %i.ou = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #31
          to label %.thread182 unwind label %bb.dg, !dbg !14798, !noalias !14242

bb.di:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEB1f_.exit131.i, %bb.il, %bb.ha, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteEEB1g_.exit.i, %bb.dy, %bb.da, %bb.cl
  %.sroa.022.5 = phi i8 [ 0, %bb.il ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbaWXNhtWAp9_11foundations9telemetry8settings17TelemetrySettingsEEB1f_.exit131.i ], [ 1, %bb.dy ], [ 1, %bb.da ], [ 1, %bb.cl ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteEEB1g_.exit.i ], [ 0, %bb.ha ], !dbg !14807
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.thread182

_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit: ; preds = %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !14808, !noalias !14240
  %.sroa.0156.0.copyload = load i64, ptr %i.ar, align 8, !dbg !14809, !noalias !14249
  %.sroa.8157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !14809
  %.sroa.8157.0.copyload = load ptr, ptr %.sroa.8157.0..sroa_idx, align 8, !dbg !14809, !noalias !14249 ; 4 uses
  %.sroa.12159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !14809
  %.sroa.12159.0.copyload = load ptr, ptr %.sroa.12159.0..sroa_idx, align 8, !dbg !14809, !noalias !14249 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !14805, !noalias !14240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !14798, !noalias !14240
  %i.ow = trunc nuw i64 %.sroa.0156.0.copyload to i1, !dbg !14810
  br i1 %i.ow, label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit.thread, label %bb.dj, !dbg !14810

bb.dj:                                            ; preds = %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit
  %.not48 = icmp eq ptr %.sroa.8157.0.copyload, null, !dbg !14250
  br i1 %.not48, label %.thread201, label %bb.dk, !dbg !14811

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12159.0.copyload) ]
  %i.ox = load ptr, ptr %i.dg, align 8, !dbg !14812, !nonnull !734, !noundef !734 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16, !dbg !14813 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !dbg !14813, !noalias !14251, !nonnull !734, !noundef !734
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8, !dbg !14814 ; 2 uses
  br label %.backedge.i.i.sink.split, !dbg !14815

.backedge.i.i.sink.split:                         ; preds = %bb.dk, %bb.dl
  %i.pb = load atomic i64, ptr %i.pa monotonic, align 8, !dbg !14816, !noalias !14252
  br label %.backedge.i.i, !dbg !14817

.backedge.i.i:                                    ; preds = %.backedge.i.i.sink.split, %bb.dn
  %.sroa.0.0.i.i96 = phi i64 [ %i.ph, %bb.dn ], [ %i.pb, %.backedge.i.i.sink.split ], !dbg !14253 ; 4 uses
  %i.pc = icmp eq i64 %.sroa.0.0.i.i96, -1, !dbg !14817
  br i1 %i.pc, label %bb.dl, label %bb.dm, !dbg !14817

bb.dl:                                            ; preds = %.backedge.i.i
  call void @llvm.x86.sse2.pause(), !dbg !14818, !noalias !14252
  br label %.backedge.i.i.sink.split, !dbg !14819

bb.dm:                                            ; preds = %.backedge.i.i
  %i.pd = icmp slt i64 %.sroa.0.0.i.i96, 0, !dbg !14820
  br i1 %i.pd, label %bb.do, label %bb.dn, !dbg !14820, !prof !995

bb.dn:                                            ; preds = %bb.dm
  %i.pe = add nuw i64 %.sroa.0.0.i.i96, 1, !dbg !14821
  %i.pf = cmpxchg weak ptr %i.pa, i64 %.sroa.0.0.i.i96, i64 %i.pe acquire monotonic, align 8, !dbg !14822, !noalias !14252 ; 2 uses
  %i.pg = extractvalue { i64, i1 } %i.pf, 1, !dbg !14822
  %i.ph = extractvalue { i64, i1 } %i.pf, 0, !dbg !14822
  br i1 %i.pg, label %_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputINtNtB2n_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2n_6marker4SendEL_EEEE9downgradeCsbaWXNhtWAp9_11foundations.exit.i, label %.backedge.i.i, !dbg !14823

bb.do:                                            ; preds = %bb.dm
  invoke void @_RNvNtCs1xwejQucwHj_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #34
          to label %.noexc.i106 unwind label %bb.dp, !dbg !14824, !noalias !14251

.noexc.i106:                                      ; preds = %bb.do
  unreachable, !dbg !14824

bb.dp:                                            ; preds = %bb.do
  %i.pi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations(ptr nonnull %.sroa.8157.0.copyload, ptr nonnull readonly align 8 dereferenceable(32) %.sroa.12159.0.copyload) #31
          to label %.thread182 unwind label %bb.dx, !dbg !14825

_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputINtNtB2n_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2n_6marker4SendEL_EEEE9downgradeCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.dn
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 16, !dbg !14826
  %i.pk = ptrtoint ptr %i.pj to i64, !dbg !14827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !14828, !noalias !14251
  store i64 1, ptr %i.ap, align 8, !dbg !14828, !noalias !14251
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !14828
  store i64 1, ptr %i.pl, align 8, !dbg !14828, !noalias !14251
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !14828 ; 2 uses
  store ptr %i.ox, ptr %i.pm, align 8, !dbg !14828, !noalias !14251
  %.sroa.4.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !14828
  store ptr %.sroa.8157.0.copyload, ptr %.sroa.4.0..sroa_idx.i97, align 8, !dbg !14828, !noalias !14251
  %.sroa.5.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !14828
  store ptr %.sroa.12159.0.copyload, ptr %.sroa.5.0..sroa_idx.i98, align 8, !dbg !14828, !noalias !14251
  %.sroa.6.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40, !dbg !14828
  store i64 %i.pk, ptr %.sroa.6.0..sroa_idx.i99, align 8, !dbg !14828, !noalias !14251
  %.sroa.7.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.ap, i64 48, !dbg !14828
  %.sroa.10.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.ap, i64 72, !dbg !14828
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i100, i8 0, i64 24, i1 false), !dbg !14828, !noalias !14251
  store i8 1, ptr %.sroa.10.0..sroa_idx.i101, align 8, !dbg !14828, !noalias !14251
  %.sroa.11.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ap, i64 73, !dbg !14828
  store i8 0, ptr %.sroa.11.0..sroa_idx.i102, align 1, !dbg !14828, !noalias !14251
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !14829, !noalias !14256
  %i.pn = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !14830, !noalias !14256 ; 8 uses
  %i.po = icmp eq ptr %i.pn, null, !dbg !14831
  br i1 %i.po, label %bb.dq, label %bb.dt, !dbg !14832, !prof !890

bb.dq:                                            ; preds = %_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputINtNtB2n_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2n_6marker4SendEL_EEEE9downgradeCsbaWXNhtWAp9_11foundations.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #33
          to label %.noexc13.i unwind label %bb.dr, !dbg !14833

.noexc13.i:                                       ; preds = %bb.dq
  unreachable, !dbg !14833

bb.dr:                                            ; preds = %bb.dq
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered4task4TaskINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.pm)
          to label %.thread182 unwind label %bb.ds, !dbg !14834

bb.ds:                                            ; preds = %bb.dr
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14835
  unreachable, !dbg !14835

bb.dt:                                            ; preds = %_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2n_6future6future6Futurep6OutputINtNtB2n_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB2n_6marker4SendEL_EEEE9downgradeCsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.pn, ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i64 80, i1 false), !dbg !14836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !14837, !noalias !14251
  store atomic i8 0, ptr %i.ey monotonic, align 8, !dbg !14838
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 16, !dbg !14839 ; 4 uses
  %i.ps = atomicrmw xchg ptr %i.ex, ptr %i.pr acq_rel, align 8, !dbg !14840 ; 5 uses
  %i.pt = icmp eq ptr %i.ps, null, !dbg !14841
  br i1 %i.pt, label %.critedge.i.i, label %bb.du, !dbg !14842

bb.du:                                            ; preds = %bb.dt
  %i.pu = load ptr, ptr %i.oy, align 8, !dbg !14843, !nonnull !734, !noundef !734
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16, !dbg !14844
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  br label %bb.dv, !dbg !14845

bb.dv:                                            ; preds = %bb.dv, %bb.du
  %i.px = load atomic ptr, ptr %i.pw acquire, align 8, !dbg !14846
  %.not.i.i103 = icmp eq ptr %i.px, %i.pv, !dbg !14847
  br i1 %.not.i.i103, label %bb.dv, label %bb.dw, !dbg !14847

bb.dw:                                            ; preds = %bb.dv
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 40, !dbg !14848
  %i.pz = load i64, ptr %i.py, align 8, !dbg !14849, !noundef !734
  %i.qa = add i64 %i.pz, 1, !dbg !14849
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 56, !dbg !14850
  store i64 %i.qa, ptr %i.qb, align 8, !dbg !14851
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pn, i64 40, !dbg !14852
  store atomic ptr %i.ps, ptr %i.qc release, align 8, !dbg !14853
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ps, i64 32, !dbg !14854
  store ptr %i.pr, ptr %i.qd, align 8, !dbg !14855
  %.pre = load ptr, ptr %i.dg, align 8, !dbg !14856
  br label %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE4pushCsbaWXNhtWAp9_11foundations.exit, !dbg !14857

.critedge.i.i:                                    ; preds = %bb.dt
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pn, i64 56, !dbg !14850
  store i64 1, ptr %i.qe, align 8, !dbg !14851
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pn, i64 40, !dbg !14852
  store atomic ptr null, ptr %i.qf release, align 8, !dbg !14858
  br label %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE4pushCsbaWXNhtWAp9_11foundations.exit, !dbg !14859

bb.dx:                                            ; preds = %bb.dp
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !14860, !noalias !14251
  unreachable, !dbg !14860

_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE4pushCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.dw, %.critedge.i.i
  %i.qh = phi ptr [ %.pre, %bb.dw ], [ %i.ox, %.critedge.i.i ], !dbg !14856
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pn, i64 64, !dbg !14861
  store atomic ptr null, ptr %i.qi monotonic, align 8, !dbg !14862
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 48, !dbg !14863
  %i.qk = atomicrmw xchg ptr %i.qj, ptr %i.pr acq_rel, align 8, !dbg !14864
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 48, !dbg !14865
  store atomic ptr %i.pr, ptr %i.ql release, align 8, !dbg !14866
  br label %.thread201, !dbg !14867

.thread201:                                       ; preds = %bb.ck, %bb.cj, %bb.dj, %_RNvMs4_NtNtCsa7cuY93gk2J_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB1u_6future6future6Futurep6OutputINtNtB1u_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB1u_6marker4SendEL_EEE4pushCsbaWXNhtWAp9_11foundations.exit
  store atomic i8 1, ptr @_RNvNtCsbaWXNhtWAp9_11foundations9telemetry21TELEMETRY_INITIALIZED.0 monotonic, align 1, !dbg !14868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !14869
  %i.qm = load ptr, ptr %i.du, align 8, !dbg !14869, !nonnull !734, !align !858, !noundef !734 ; 29 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14261), !dbg !14870
  call void @llvm.experimental.noalias.scope.decl(metadata !14262), !dbg !14870
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.57.i), !dbg !14871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !14871, !noalias !14265
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 96, !dbg !14871
  call void @llvm.experimental.noalias.scope.decl(metadata !14266), !dbg !14871
  call void @llvm.experimental.noalias.scope.decl(metadata !14267), !dbg !14871
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 202, !dbg !14872
  %i.qp = load i8, ptr %i.qo, align 2, !dbg !14872, !range !766, !alias.scope !14269, !noundef !734
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 192, !dbg !14873
  %i.qr = load i64, ptr %i.qq, align 8, !dbg !14873, !alias.scope !14269, !noundef !734
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0.i.i), !dbg !14874
  %i.qs = load i16, ptr %i.qn, align 8, !dbg !14875, !range !879, !alias.scope !14269, !noundef !734 ; 2 uses
  %i.qt = icmp eq i16 %i.qs, 2, !dbg !14875
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qm, i64 128, !dbg !14875 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qm, i64 144, !dbg !14875 ; 2 uses
  br i1 %i.qt, label %bb.dy, label %bb.dz, !dbg !14875

bb.dy:                                            ; preds = %.thread201
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.07.i.i), !dbg !14876, !noalias !14272
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 104, !dbg !14877
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.07.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qw)
          to label %.noexc119 unwind label %bb.di, !dbg !14877

.noexc119:                                        ; preds = %bb.dy
  %i.qx = load <2 x i64>, ptr %i.qu, align 8, !dbg !14877, !alias.scope !14269
  %i.qy = load i64, ptr %i.qv, align 8, !dbg !14877, !alias.scope !14269, !noundef !734
  %.sroa.5.sroa.0.6..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.i.i, i64 6, !dbg !14876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.5.sroa.0.6..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.07.i.i, i64 24, i1 false), !dbg !14876, !noalias !14272
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.07.i.i), !dbg !14876, !noalias !14272
end_hunk_1
begin_hunk_2_@_RNvNtCsbaWXNhtWAp9_11foundations9telemetry4init:bb.a
  %.sroa.820.sroa.5.0..sroa.820.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24, !dbg !15165
  store i64 %.sroa.24.0, ptr %.sroa.820.sroa.5.0..sroa.820.0..sroa_idx21.sroa_idx, align 8, !dbg !15165
  %.sroa.820.sroa.6.0..sroa.820.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 32, !dbg !15165
  store ptr %.sroa.25.0, ptr %.sroa.820.sroa.6.0..sroa.820.0..sroa_idx21.sroa_idx, align 8, !dbg !15165
  %.sroa.820.sroa.7.0..sroa.820.0..sroa_idx21.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 40, !dbg !15165
  store ptr %.sroa.26.0, ptr %.sroa.820.sroa.7.0..sroa.820.0..sroa_idx21.sroa_idx, align 8, !dbg !15165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !dbg !15166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !dbg !15166
  %.not.i138 = icmp eq i64 %.sroa.0160.3, 2, !dbg !15167
  br i1 %.not.i138, label %bb.jb, label %bb.iq, !dbg !15168

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15169, !noalias !14391
  call void @llvm.experimental.noalias.scope.decl(metadata !14394), !dbg !15170
  call void @llvm.experimental.noalias.scope.decl(metadata !14395), !dbg !15171
  %i.aad = trunc nuw i64 %.sroa.0160.3 to i1, !dbg !15172
  br i1 %i.aad, label %bb.ir, label %bb.is, !dbg !15172

bb.ir:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !15173, !noalias !14396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15173, !noalias !14396
  invoke void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio3net4unix8listenerNtB2_12UnixListener10local_addr(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.617.0..sroa_idx18)
          to label %.noexc.i142 unwind label %.body.i139, !dbg !15174, !noalias !14397

.noexc.i142:                                      ; preds = %bb.ir
  %i.aae = load i32, ptr %i.b, align 8, !dbg !15175, !range !14338, !noalias !14396, !noundef !734
  %i.aaf = trunc nuw i32 %i.aae to i1, !dbg !15176
  br i1 %i.aaf, label %bb.iu, label %bb.iv, !dbg !15176

bb.is:                                            ; preds = %bb.iq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15177, !noalias !14396
  invoke void @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio3net3tcp8listenerNtB2_11TcpListener10local_addr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.617.0..sroa_idx18)
          to label %.noexc10.i unwind label %.body.i139, !dbg !15178, !noalias !14397

.noexc10.i:                                       ; preds = %bb.is
  %i.aag = load i16, ptr %i.d, align 8, !dbg !15179, !range !879, !noalias !14396, !noundef !734 ; 2 uses
  %i.aah = icmp eq i16 %i.aag, 2, !dbg !15179
  br i1 %i.aah, label %bb.it, label %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread18.i, !dbg !15180

bb.it:                                            ; preds = %.noexc10.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15181
  %i.aaj = load ptr, ptr %i.aai, align 8, !dbg !15181, !noalias !14396, !nonnull !734, !noundef !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15182, !noalias !14396
  %i.aak = invoke noundef nonnull ptr @_RNvXs_NtCs7XllS0bOcsN_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbaWXNhtWAp9_11foundations(ptr noundef nonnull %i.aaj)
          to label %.noexc11.i unwind label %.body.i139, !dbg !15183, !noalias !14397

.noexc11.i:                                       ; preds = %bb.it
  %i.aal = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15184
  store ptr %i.aak, ptr %i.aal, align 8, !dbg !15184, !alias.scope !14399, !noalias !14391
  store i16 -1, ptr %i.e, align 8, !dbg !15184, !alias.scope !14399, !noalias !14391
  br label %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i, !dbg !15185

_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread18.i: ; preds = %.noexc10.i
  %.sroa.427.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2, !dbg !15186
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !15187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.427.0..sroa_idx.i.i.i, i64 6, i1 false), !dbg !15186, !noalias !14401
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15186
  %.sroa.528.0.copyload.i.i.i = load ptr, ptr %.sroa.528.0..sroa_idx.i.i.i, align 8, !dbg !15186, !noalias !14396
  %.sroa.629.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15186
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !15187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.629.0..sroa_idx.i.i.i, i64 16, i1 false), !dbg !15186, !noalias !14401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15182, !noalias !14396
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15187
  store ptr %.sroa.528.0.copyload.i.i.i, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !dbg !15187, !alias.scope !14399, !noalias !14391
  br label %bb.iy, !dbg !15188

bb.iu:                                            ; preds = %.noexc.i142
  %i.aam = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15189
  %i.aan = load ptr, ptr %i.aam, align 8, !dbg !15189, !noalias !14396, !nonnull !734, !noundef !734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15190, !noalias !14396
  %i.aao = invoke noundef nonnull ptr @_RNvXs_NtCs7XllS0bOcsN_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCsbaWXNhtWAp9_11foundations(ptr noundef nonnull %i.aan)
          to label %.noexc12.i unwind label %.body.i139, !dbg !15191, !noalias !14397

.noexc12.i:                                       ; preds = %bb.iu
  %i.aap = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15192
  store ptr %i.aao, ptr %i.aap, align 8, !dbg !15192, !alias.scope !14399, !noalias !14391
  store i16 -1, ptr %i.e, align 8, !dbg !15192, !alias.scope !14399, !noalias !14391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15193, !noalias !14396
  br label %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i, !dbg !15185

bb.iv:                                            ; preds = %.noexc.i142
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !15194
  %.sroa.030.0.copyload.i.i.i = load i32, ptr %i.aaq, align 4, !dbg !15194, !noalias !14396
  %.sroa.431.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15194
  %.sroa.431.0.copyload.i.i.i = load ptr, ptr %.sroa.431.0..sroa_idx.i.i.i, align 8, !dbg !15194, !noalias !14396
  %.sroa.532.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15194
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523.i.i.i), !dbg !15173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.523.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.532.0..sroa_idx.i.i.i, i64 104, i1 false), !dbg !15194, !noalias !14396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15190, !noalias !14396
  store i32 %.sroa.030.0.copyload.i.i.i, ptr %i.c, align 4, !dbg !15195, !noalias !14396
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !15195
  store ptr %.sroa.431.0.copyload.i.i.i, ptr %.sroa.422.0..sroa_idx.i.i.i, align 4, !dbg !15195, !noalias !14396
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12, !dbg !15195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %.sroa.523.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.523.i.i.i, i64 104, i1 false), !dbg !15195, !noalias !14396
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523.i.i.i), !dbg !15190
  %i.aar = invoke { ptr, i64 } @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio3net4unix10socketaddrNtB2_10SocketAddr11as_pathname(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(116) %i.c)
          to label %.noexc13.i143 unwind label %.body.i139, !dbg !15196, !noalias !14397 ; 2 uses

.noexc13.i143:                                    ; preds = %bb.iv
  %i.aas = extractvalue { ptr, i64 } %i.aar, 0, !dbg !15196 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aas, null, !dbg !15173
  br i1 %.not.i.i.i, label %bb.ix, label %bb.iw, !dbg !15197, !prof !995

bb.iw:                                            ; preds = %.noexc13.i143
  %i.aat = extractvalue { ptr, i64 } %i.aar, 1, !dbg !15196
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.425.i.i.i), !dbg !15198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15198, !noalias !14396
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aas, i64 noundef %i.aat)
          to label %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.i unwind label %.body.i139, !dbg !15199, !noalias !14397

bb.ix:                                            ; preds = %.noexc13.i143
  %i.aau = invoke noundef nonnull ptr @_RINvMNtCs7XllS0bOcsN_6anyhow5errorNtB5_5Error3msgReECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 36)
          to label %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread19.i unwind label %.body.i139, !dbg !15200, !noalias !14397

_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread19.i: ; preds = %bb.ix
  %i.aav = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15201
  store ptr %i.aau, ptr %i.aav, align 8, !dbg !15201, !alias.scope !14399, !noalias !14391
  store i16 -1, ptr %i.e, align 8, !dbg !15202, !alias.scope !14399, !noalias !14391
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15193, !noalias !14396
  br label %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i, !dbg !15188

.body.i139:                                       ; preds = %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.df) #31
          to label %bb.ja unwind label %bb.iz, !dbg !15203, !noalias !14405

_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.i: ; preds = %bb.iw
  %.sroa.425.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.425.i.i.i, i64 6, !dbg !15204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %.sroa.425.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !15204, !noalias !14396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15205, !noalias !14396
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !15206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.425.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.425.i.i.i, i64 30, i1 false), !dbg !15206, !noalias !14401
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425.i.i.i), !dbg !15207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15193, !noalias !14396
  br label %bb.iy, !dbg !15188

bb.iy:                                            ; preds = %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.i, %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread18.i
  %i.aax = phi i16 [ %i.aag, %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread18.i ], [ 2, %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.i ]
  %.sroa.46.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.e, i64 2, !dbg !15208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.46.0..sroa_idx.i140, i64 30, i1 false), !dbg !15208
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbaWXNhtWAp9_11foundations4addr10ListenAddrNtCs7XllS0bOcsN_6anyhow5ErrorEEB11_.exit.i, !dbg !15209

_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i: ; preds = %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread19.i, %.noexc12.i, %.noexc11.i
  %i.aay = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !15210
  invoke void @_RNvXs4_NtCs7XllS0bOcsN_6anyhow5errorNtB7_5ErrorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbaWXNhtWAp9_11foundations4addr10ListenAddrNtCs7XllS0bOcsN_6anyhow5ErrorEEB11_.exit.i unwind label %.body.i139, !dbg !15211, !noalias !14397

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbaWXNhtWAp9_11foundations4addr10ListenAddrNtCs7XllS0bOcsN_6anyhow5ErrorEEB11_.exit.i: ; preds = %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i, %bb.iy
  %.sroa.0.122.i = phi i16 [ %i.aax, %bb.iy ], [ -1, %_RNvMs1_NtNtCsbaWXNhtWAp9_11foundations9telemetry6serverNtB5_21TelemetryServerFuture10local_addr.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15212, !noalias !14391
  br label %bb.jb, !dbg !15213

bb.iz:                                            ; preds = %bb.ja, %.body.i139
  %i.aaz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !15214, !noalias !14397
  unreachable, !dbg !15214

bb.ja:                                            ; preds = %.body.i139
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server21TelemetryServerFutureEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.dh) #31
          to label %.thread182 unwind label %bb.iz, !dbg !15203, !noalias !14397

bb.jb:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbaWXNhtWAp9_11foundations4addr10ListenAddrNtCs7XllS0bOcsN_6anyhow5ErrorEEB11_.exit.i, %bb.ip
  %.sroa.0.0.i = phi i16 [ %.sroa.0.122.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbaWXNhtWAp9_11foundations4addr10ListenAddrNtCs7XllS0bOcsN_6anyhow5ErrorEEB11_.exit.i ], [ -1, %bb.ip ], !dbg !15215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !dbg !15216
  %.sroa.0162.0.copyload = load i64, ptr %i.dk, align 8, !dbg !15217 ; 2 uses
  %.not.i148 = icmp eq i64 %.sroa.0162.0.copyload, -1, !dbg !15218
  br i1 %.not.i148, label %bb.jd, label %bb.jc, !dbg !15219

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false), !dbg !15220
  br label %bb.jd, !dbg !15221

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, i64 48, i1 false), !dbg !15222
  %.sroa.8227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !15223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8227.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 24, i1 false), !dbg !15222
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !15223
  store i64 %.sroa.0162.0.copyload, ptr %.sroa.4223.0..sroa_idx, align 8, !dbg !15223
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !15223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5224.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i, i64 32, i1 false), !dbg !15223
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !15223
  store i16 %.sroa.0.0.i, ptr %.sroa.6225.0..sroa_idx, align 8, !dbg !15223
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 90, !dbg !15223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.7226.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.6.i, i64 30, i1 false), !dbg !15223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !14746
  br label %bb.je, !dbg !14414

bb.je:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteEEB1g_.exit, %bb.jm, %bb.jd
  ret void, !dbg !15224

bb.jf:                                            ; preds = %.body.thread, %.thread, %.thread182
  %i.aba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !15225
  unreachable, !dbg !15225

_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit.thread: ; preds = %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit, %bb.cm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations.exit.i, %bb.io
  %.sroa.13.3.ph.sink256 = phi ptr [ %.sroa.13.3.ph, %bb.io ], [ %.sroa.8157.0.copyload, %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit ], [ %.sink.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations.exit.i ], [ %i.nt, %bb.cm ] ; 2 uses
  %.sroa.022.6 = phi i8 [ 0, %bb.io ], [ 1, %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs26L2cHvO7VQ_13cf_rustracing6tracer6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtBG_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB3p_4SyncEL_EB2l_EECsbaWXNhtWAp9_11foundations.exit.i ], [ 1, %bb.cm ], !dbg !14807 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.3.ph.sink256) ]
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15226
  store ptr %.sroa.13.3.ph.sink256, ptr %i.abb, align 8, !dbg !15226
  store i64 -1, ptr %0, align 8, !dbg !15226
  %i.abc = load i64, ptr %i.dk, align 8, !dbg !15227, !range !808, !alias.scope !14409, !noundef !734
  %i.abd = icmp eq i64 %i.abc, -1, !dbg !15227
  br i1 %i.abd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations.exit, label %bb.jg, !dbg !15227

bb.jg:                                            ; preds = %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit.thread
  invoke void @_RNvXs4_CshBQhFkKQVuE_10slog_asyncNtB5_10AsyncGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk)
          to label %bb.ji unwind label %bb.jh, !dbg !15228

bb.jh:                                            ; preds = %bb.jg
  %i.abe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.5.0..sroa_idx) #31
          to label %bb.jj unwind label %bb.jl, !dbg !15228

bb.ji:                                            ; preds = %bb.jg
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.5.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.jk, !dbg !15228

bb.jj:                                            ; preds = %bb.jk, %bb.jh
  %.pn.i.i149 = phi { ptr, i32 } [ %i.abf, %bb.jk ], [ %i.abe, %bb.jh ]
  invoke void @_RNvXs3_NtCs49WdmBbiWyj_17crossbeam_channel7channelINtB5_6SenderNtCshBQhFkKQVuE_10slog_async8AsyncMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk)
          to label %.thread unwind label %bb.jl, !dbg !15229

bb.jk:                                            ; preds = %bb.ji
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.jl:                                            ; preds = %bb.jj, %bb.jh
  %i.abg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !15228
  unreachable, !dbg !15228

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.ji
  invoke void @_RNvXs3_NtCs49WdmBbiWyj_17crossbeam_channel7channelINtB5_6SenderNtCshBQhFkKQVuE_10slog_async8AsyncMsgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.cg, !dbg !15230

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init4init.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshBQhFkKQVuE_10slog_async10AsyncGuardECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !dbg !14746
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg)
          to label %bb.jm unwind label %bb.b, !dbg !14414

bb.jm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations.exit
  %4 = trunc nuw i8 %.sroa.022.6 to i1, !dbg !14414
  br i1 %4, label %bb.jn, label %bb.je, !dbg !14414

.sink.split:                                      ; preds = %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit
  %.sink = phi ptr [ %i.abk, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit ], [ %i.dx, %bb.e ]
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14807
  store ptr %.sink, ptr %i.abh, align 8, !dbg !14807
  store i64 -1, ptr %0, align 8, !dbg !14807
  br label %bb.jn, !dbg !15231

bb.jn:                                            ; preds = %.sink.split, %bb.ci, %bb.jm
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteEEB1g_.exit unwind label %bb.jo, !dbg !15231

bb.jo:                                            ; preds = %bb.jn
  %i.abi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.jp, !dbg !15232

bb.jp:                                            ; preds = %bb.jo
  %i.abj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !15231
  unreachable, !dbg !15231

common.resume:                                    ; preds = %.body.a, %.body.thread, %bb.jo
  %common.resume.op = phi { ptr, i32 } [ %i.abi, %bb.jo ], [ %.pn52167, %.body.thread ], [ %.pn52, %.body.a ]
  resume { ptr, i32 } %common.resume.op, !dbg !14807

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteEEB1g_.exit: ; preds = %bb.jn
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !15233
  br label %bb.je, !dbg !14414

.thread182:                                       ; preds = %bb.ja, %.noexc106.i, %.body.thread.i, %.thread135.i, %.body.i114, %bb.dp, %bb.dr, %bb.di, %bb.cy, %bb.cz, %bb.df, %bb.dh
  %.sroa.025.2.lpad-body = phi i1 [ true, %bb.cy ], [ true, %bb.dh ], [ true, %bb.df ], [ true, %bb.cz ], [ true, %.noexc106.i ], [ true, %bb.dp ], [ true, %.body.i114 ], [ true, %bb.di ], [ true, %bb.dr ], [ true, %.thread135.i ], [ true, %.body.thread.i ], [ false, %bb.ja ]
  %.sroa.022.5.lpad-body = phi i8 [ 1, %bb.cy ], [ 1, %bb.dh ], [ 1, %bb.df ], [ 1, %bb.cz ], [ 0, %.noexc106.i ], [ 1, %bb.dp ], [ 1, %.body.i114 ], [ %.sroa.022.5, %bb.di ], [ 1, %bb.dr ], [ 0, %.thread135.i ], [ 0, %.body.thread.i ], [ 0, %bb.ja ] ; 2 uses
  %eh.lpad-body95 = phi { ptr, i32 } [ %i.oh, %bb.cy ], [ %i.ou, %bb.dh ], [ %i.os, %bb.df ], [ %i.oh, %bb.cz ], [ %.pn89.i, %.noexc106.i ], [ %i.pi, %bb.dp ], [ %.pn.pn.i115, %.body.i114 ], [ %i.ov, %bb.di ], [ %i.pp, %bb.dr ], [ %eh.lpad-body103138.i, %.thread135.i ], [ %.pn91142.i, %.body.thread.i ], [ %i.aaw, %bb.ja ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshBQhFkKQVuE_10slog_async10AsyncGuardEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dk) #31
          to label %bb.cf unwind label %bb.jf, !dbg !14746

.thread:                                          ; preds = %bb.jj, %bb.cg, %.body85.i, %bb.cf
  %.pn50172 = phi { ptr, i32 } [ %eh.lpad-body95, %bb.cf ], [ %.pn76.pn.i, %.body85.i ], [ %i.nf, %bb.cg ], [ %.pn.i.i149, %bb.jj ]
  %.sroa.022.2171 = phi i8 [ %.sroa.022.5.lpad-body, %bb.cf ], [ 1, %.body85.i ], [ %.sroa.022.3, %bb.cg ], [ %.sroa.022.6, %bb.jj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsa7cuY93gk2J_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtB4_3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCs7XllS0bOcsN_6anyhow5ErrorENtNtB4_6marker4SendEL_EEEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dg) #31
          to label %.body.a unwind label %bb.jf, !dbg !14414

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !dbg !15234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !dbg !15234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !dbg !15234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !dbg !15234
  %i.abk = invoke noundef nonnull ptr @_RINvMNtCs7XllS0bOcsN_6anyhow5errorNtB5_5Error3msgNtNtCs1xwejQucwHj_5alloc6string6StringECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dp)
          to label %.sink.split unwind label %bb.b, !dbg !15234

.body.thread:                                     ; preds = %bb.l, %bb.i, %.body.a
  %.pn52167 = phi { ptr, i32 } [ %.pn52, %.body.a ], [ %i.en, %bb.i ], [ %i.ev, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server6router20TelemetryServerRouteEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #31
          to label %common.resume unwind label %bb.jf, !dbg !14414
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4init25create_tracer_and_span_rx(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !15235 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.5.sroa.8 = alloca [32 x i8], align 8     ; 4 uses
  %.sroa.10 = alloca [32 x i8], align 8           ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92, !dbg !15327
  %i.j = load i8, ptr %i.i, align 4, !dbg !15327, !range !15305, !noundef !734 ; 2 uses
  %.not = icmp eq i8 %i.j, 2, !dbg !15327
  br i1 %.not, label %bb.f, label %bb.b, !dbg !15328

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !15327
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10), !dbg !15319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15306), !dbg !15319
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = trunc nuw i8 %i.j to i1, !dbg !15329
  br i1 %i.m, label %bb.c, label %bb.e, !dbg !15329

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !15329
  %i.o = load i32, ptr %i.n, align 8, !dbg !15330, !alias.scope !15306, !noundef !734 ; 4 uses
  %.not.i = icmp eq i32 %i.o, 0, !dbg !15331
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !15332

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15333, !noalias !15308
  %i.p = udiv i32 1000000000, %i.o, !dbg !15334
  %.cmp.i = icmp eq i32 %i.o, 1, !dbg !15335      ; 2 uses
  %i.q = zext i1 %.cmp.i to i64, !dbg !15335
  %i.r = select i1 %.cmp.i, i32 0, i32 %i.p, !dbg !15336
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !15337
  store i32 %i.o, ptr %i.s, align 8, !dbg !15337, !noalias !15308
  store i64 %i.q, ptr %i.b, align 8, !dbg !15337, !noalias !15308
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15337
  store i32 %i.r, ptr %i.t, align 8, !dbg !15337, !noalias !15308
  %i.u = tail call noundef nonnull align 8 ptr @_RNvXNtCsbaWXNhtWAp9_11foundations9ratelimitNtB2_17StaticQuantaClockNtNtCs3oUPovFnLWP_4core7default7Default7default(), !dbg !15338, !noalias !15308
  call void @_RNvMNtCsgtgatFLTNh8_8governor5stateINtB2_11RateLimiterNtNtB2_6direct8NotKeyedNtNtB2_9in_memory13InMemoryStateNtNtCsbaWXNhtWAp9_11foundations9ratelimit17StaticQuantaClockINtNtB4_10middleware14NoOpMiddlewareNtNtNtB4_5clock6quanta13QuantaInstantEE3newB1N_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u), !dbg !15339, !noalias !15308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15340, !noalias !15308
  %.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !15341, !noalias !15308
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64, !dbg !15342
  br label %bb.e, !dbg !15343

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.v, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], !dbg !15344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15345, !noalias !15308
  %i.w = load double, ptr %i.k, align 8, !dbg !15346, !alias.scope !15306, !noundef !734
  call void @_RNvMs_NtCs26L2cHvO7VQ_13cf_rustracing7samplerNtB4_20ProbabilisticSampler3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, double noundef %i.w), !dbg !15345, !noalias !15308
  %i.x = load i64, ptr %i.a, align 8, !dbg !15347, !range !760, !noalias !15308, !noundef !734 ; 2 uses
  %.not29.i = icmp eq i64 %i.x, -1, !dbg !15347
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !15348
  %i.z = load i64, ptr %i.y, align 8, !dbg !15348, !noalias !15308 ; 2 uses
  br i1 %.not29.i, label %bb.h, label %bb.g, !dbg !15349

bb.f:                                             ; preds = %bb.a, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit
  %.sroa.8.0 = phi ptr [ @76, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ @75, %bb.a ], !dbg !15350 ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.ae, %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], !dbg !15350 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !15351
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !15351, !noundef !734 ; 2 uses
  %.not6 = icmp eq i64 %i.ab, 0, !dbg !15351
  br i1 %.not6, label %bb.k, label %bb.j, !dbg !15352

bb.g:                                             ; preds = %bb.e
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !15353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i, i64 24, i1 false), !dbg !15353, !noalias !15306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15354, !noalias !15308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !dbg !15356
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !15357
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !15358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !15358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.8, i64 24, i1 false), !dbg !15357
  store i64 %i.x, ptr %i.d, align 8, !dbg !15358
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !15358
  store i64 %i.z, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !15358
  %i.ac = call noundef nonnull ptr @_RNvXs_NtCs7XllS0bOcsN_6anyhow5errorNtB6_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCs26L2cHvO7VQ_13cf_rustracing5error5ErrorE4fromCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d), !dbg !15359
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15360
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !15360
  store ptr null, ptr %0, align 8, !dbg !15360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !15361
  br label %bb.u, !dbg !15362

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15354, !noalias !15308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !15363, !noalias !15306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !15355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10, i64 32, i1 false), !dbg !15364
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10), !dbg !15357
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !dbg !15365, !noalias !15322
  %i.ae = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !dbg !15366, !noalias !15322 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !15367
  br i1 %i.af, label %bb.i, label %_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit, !dbg !15368, !prof !890

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #33, !dbg !15369, !noalias !15322
  unreachable, !dbg !15369

_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.h
  store i64 %i.z, ptr %i.ae, align 8, !dbg !15370
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !15370
  store i64 %.sroa.0.0.i, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !15370
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !15370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.8, i64 32, i1 false), !dbg !15370
  br label %bb.f, !dbg !15371

bb.j:                                             ; preds = %bb.f
  %i.ag = invoke { ptr, ptr } @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel7channel(i64 noundef %i.ab)
          to label %bb.l unwind label %bb.v, !dbg !15372 ; 2 uses

bb.k:                                             ; preds = %bb.f
  %i.ah = invoke { ptr, ptr } @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel17unbounded_channel()
          to label %bb.q unwind label %bb.v, !dbg !15373 ; 2 uses

bb.l:                                             ; preds = %bb.j
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0, !dbg !15372
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1, !dbg !15372 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !15374
  store ptr %i.aj, ptr %i.h, align 8, !dbg !15374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !15375
  invoke void @_RINvMs_NtCs26L2cHvO7VQ_13cf_rustracing6tracerINtB5_6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB7_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2W_4SyncEL_EB1S_E13with_consumerINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel10SpanSenderINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc7bounded6SenderINtNtB7_4span12FinishedSpanB1S_EEEEB4b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.8.0, ptr noundef nonnull %i.ai)
          to label %bb.o unwind label %bb.m, !dbg !15376

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !dbg !15377, !noalias !15325
  %i.am = icmp eq i64 %i.al, 1, !dbg !15378
  br i1 %i.am, label %bb.n, label %.thread, !dbg !15378

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !15379
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #32
          to label %.thread unwind label %bb.p, !dbg !15380

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !15381
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15382
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !15382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15384
  br label %bb.u, !dbg !15385

bb.p:                                             ; preds = %bb.s, %bb.n, %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !15386
  unreachable, !dbg !15386

bb.q:                                             ; preds = %bb.k
  %i.ao = extractvalue { ptr, ptr } %i.ah, 0, !dbg !15373
  %i.ap = extractvalue { ptr, ptr } %i.ah, 1, !dbg !15373 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !15387
  store ptr %i.ap, ptr %i.f, align 8, !dbg !15387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !15388
  invoke void @_RINvMs_NtCs26L2cHvO7VQ_13cf_rustracing6tracerINtB5_6TracerINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtB7_7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtCs3oUPovFnLWP_4core6marker4SendNtB2W_4SyncEL_EB1S_E13with_consumerINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel10SpanSenderINtNtNtNtCs3zuhHmEJ01l_5tokio4sync4mpsc9unbounded15UnboundedSenderINtNtB7_4span12FinishedSpanB1S_EEEEB4b_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.8.0, ptr noundef nonnull %i.ao)
          to label %bb.t unwind label %bb.r, !dbg !15389

bb.r:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !dbg !15390, !noalias !15326
  %i.as = icmp eq i64 %i.ar, 1, !dbg !15391
  br i1 %i.as, label %bb.s, label %.thread, !dbg !15391

bb.s:                                             ; preds = %bb.r
  fence acquire, !dbg !15392
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCs3zuhHmEJ01l_5tokio4sync5mutex5MutexINtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7channel8ReceiverINtNtCs26L2cHvO7VQ_13cf_rustracing4span12FinishedSpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEE9drop_slowB1x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #32
          to label %.thread unwind label %bb.p, !dbg !15393

bb.t:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !15394
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !15395
  store ptr %i.ap, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !15395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !15396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15397
  br label %bb.u, !dbg !15385

bb.u:                                             ; preds = %bb.o, %bb.t, %bb.g
  ret void, !dbg !15362

.thread:                                          ; preds = %bb.r, %bb.s, %bb.m, %bb.n, %bb.v
  %.pn45 = phi { ptr, i32 } [ %i.at, %bb.v ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ], [ %i.aq, %bb.s ], [ %i.aq, %bb.r ]
  resume { ptr, i32 } %.pn45, !dbg !15386

bb.v:                                             ; preds = %bb.k, %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtCs26L2cHvO7VQ_13cf_rustracing7sampler7SamplerNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateENtNtB4_6marker4SendNtB33_4SyncEL_EECsbaWXNhtWAp9_11foundations(ptr nonnull %.sroa.0.0, ptr nonnull %.sroa.8.0) #31
end_hunk_2
