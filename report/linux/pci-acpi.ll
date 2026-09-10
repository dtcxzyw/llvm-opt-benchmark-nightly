Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/pci-acpi?download=true
inline.NumInlined: 80
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.5 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@acpi_pci_get_power_state.state_conv = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@pci_acpi_companion_lookup_sem = internal global %struct.rw_semaphore zeroinitializer, align 8
@pci_acpi_find_companion_hook = internal unnamed_addr global ptr null, align 8
@__UNIQUE_ID_addressable_pci_acpi_set_companion_lookup_hook_539 = internal global ptr @pci_acpi_set_companion_lookup_hook, section ".discard.addressable", align 8
@__UNIQUE_ID_addressable_pci_acpi_clear_companion_lookup_hook_540 = internal global ptr @pci_acpi_clear_companion_lookup_hook, section ".discard.addressable", align 8
@pci_msi_get_fwnode_cb = internal unnamed_addr global ptr null, align 8
@__UNIQUE_ID_addressable_acpi_pci_init_542 = internal global ptr @acpi_pci_init, section ".discard.addressable", align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"_HPX\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\013%s: Type %d record not supported\0A\00", align 1
@__func__.acpi_run_hpx = private unnamed_addr constant [13 x i8] c"acpi_run_hpx\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"\014%s: Type 0 Revision %d record not supported\0A\00", align 1
@__func__.decode_type0_hpx_record = private unnamed_addr constant [24 x i8] c"decode_type0_hpx_record\00", align 1
@pci_default_type0 = internal unnamed_addr constant %struct.hpx_type0 { i32 1, i8 8, i8 64, i8 0, i8 0 }, align 4
@.str.9 = private unnamed_addr constant [51 x i8] c"PCI settings rev %d not supported; using defaults\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"\014%s: Type 1 Revision %d record not supported\0A\00", align 1
@__func__.decode_type1_hpx_record = private unnamed_addr constant [24 x i8] c"decode_type1_hpx_record\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"PCI-X settings not supported\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\014%s: Type 2 Revision %d record not supported\0A\00", align 1
@__func__.decode_type2_hpx_record = private unnamed_addr constant [24 x i8] c"decode_type2_hpx_record\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"_HPX attempts Link Control setting (AND %#06x OR %#06x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"\014%s: Type 3 Revision %d record not supported\0A\00", align 1
@__func__.program_type3_hpx_record = private unnamed_addr constant [25 x i8] c"program_type3_hpx_record\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Encountered _HPX type 3 with unsupported config space location\00", align 1
@hpx3_device_type.pcie_to_hpx3_type = internal unnamed_addr constant [11 x i32] [i32 1, i32 2, i32 0, i32 0, i32 16, i32 32, i32 64, i32 128, i32 256, i32 4, i32 8], align 16
@__const.acpi_run_hpp.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"_HPP\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"ExternalFacingPort\00", align 1
@acpi_gbl_FADT = external dso_local local_unnamed_addr global %struct.acpi_table_fadt, align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"\016ACPI FADT declares the system doesn't support MSI, so disable it\0A\00", align 1
@.str.20 = private unnamed_addr constant [74 x i8] c"\016ACPI FADT declares the system doesn't support PCIe ASPM, so disable it\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_addressable_acpi_pci_init_542, ptr @__UNIQUE_ID_addressable_pci_acpi_clear_companion_lookup_hook_540, ptr @__UNIQUE_ID_addressable_pci_acpi_set_companion_lookup_hook_539], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @acpi_pci_root_get_mcfg_addr(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.b = call i32 @acpi_evaluate_integer(ptr noundef nonnull %0, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull %i.a) #10
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.c, i64 %i.d, i64 0
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a
  %.03 = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i64 %.03
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @pci_acpi_preserve_config(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 656        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #10
  %i.d = getelementptr i8, ptr %i.b, i64 -16
  %.not.i26 = icmp ne ptr %i.d, null
  %.not.i.not = and i1 %i.c, %.not.i26
  br i1 %.not.i.not, label %acpi_device_handle.exit, label %acpi_device_handle.exit.thread

acpi_device_handle.exit:                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %i.f = load ptr, ptr %i.e, align 8
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %acpi_device_handle.exit.thread, label %bb.b

bb.b:                                             ; preds = %acpi_device_handle.exit
  %i.g = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.h = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.g) #10
  %i.i = getelementptr i8, ptr %i.g, i64 -16
  %.not.i1927 = icmp ne ptr %i.i, null
  %.not.i19.not = and i1 %i.h, %.not.i1927
  br i1 %.not.i19.not, label %bb.c, label %acpi_device_handle.exit20

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 -8
  %i.k = load ptr, ptr %i.j, align 8
  br label %acpi_device_handle.exit20

acpi_device_handle.exit20:                        ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ]
  %i.m = tail call ptr @acpi_evaluate_dsm(ptr noundef %i.l, ptr noundef nonnull @pci_acpi_dsm_guid, i64 noundef 1, i64 noundef 5, ptr noundef null) #10 ; 5 uses
  %.not.i21 = icmp eq ptr %i.m, null
  br i1 %.not.i21, label %acpi_evaluate_dsm_typed.exit.thread, label %bb.d

bb.d:                                             ; preds = %acpi_device_handle.exit20
  %i.n = load i32, ptr %i.m, align 8
  %.not10.i = icmp eq i32 %i.n, 1
  br i1 %.not10.i, label %acpi_evaluate_dsm_typed.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @kfree(ptr noundef nonnull %i.m) #10
  br label %acpi_evaluate_dsm_typed.exit.thread

acpi_evaluate_dsm_typed.exit:                     ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  br label %acpi_evaluate_dsm_typed.exit.thread

acpi_evaluate_dsm_typed.exit.thread:              ; preds = %acpi_device_handle.exit20, %bb.e, %acpi_evaluate_dsm_typed.exit
  %.0.i25 = phi ptr [ %i.m, %acpi_evaluate_dsm_typed.exit ], [ null, %bb.e ], [ null, %acpi_device_handle.exit20 ]
  %.0 = phi i1 [ %i.q, %acpi_evaluate_dsm_typed.exit ], [ false, %bb.e ], [ false, %acpi_device_handle.exit20 ]
  tail call void @kfree(ptr noundef %.0.i25) #10
  br label %acpi_device_handle.exit.thread

acpi_device_handle.exit.thread:                   ; preds = %bb.a, %acpi_evaluate_dsm_typed.exit.thread, %acpi_device_handle.exit
  %.1 = phi i1 [ %.0, %acpi_evaluate_dsm_typed.exit.thread ], [ false, %acpi_device_handle.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @is_acpi_device_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -19, 1) i32 @pci_acpi_program_hp_params(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.acpi_buffer, align 8        ; 6 uses
  %2 = alloca %struct.hpx_type0, align 8          ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %3 = alloca %struct.acpi_buffer, align 8        ; 6 uses
  %4 = alloca %struct.hpx_type0, align 8          ; 10 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.f = load i32, ptr @acpi_pci_disabled, align 4
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  store ptr null, ptr %i.e, align 8, !annotation !11
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %acpi_pci_get_bridge_handle.exit
  %.pn = phi ptr [ %.0, %acpi_pci_get_bridge_handle.exit ], [ %0, %.preheader.preheader ]
  %.0.in = getelementptr i8, ptr %.pn, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 5 uses
  %.not19 = icmp eq ptr %.0, null
  br i1 %.not19, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr i8, ptr %.0, i64 16
  %.val.i = load ptr, ptr %i.g, align 8
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.0, i64 272
  %i.i = load ptr, ptr %i.h, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.0, i64 56
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %acpi_pci_get_bridge_handle.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 200
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.011.i = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.e ]
  %i.m = getelementptr i8, ptr %.011.i, i64 656
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.n) #10
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  %.not.i1314.i = icmp ne ptr %i.p, null
  %.not.i13.not.i = and i1 %i.o, %.not.i1314.i
  br i1 %.not.i13.not.i, label %bb.g, label %acpi_pci_get_bridge_handle.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.n, i64 -8
  %i.r = load ptr, ptr %i.q, align 8
  br label %acpi_pci_get_bridge_handle.exit

acpi_pci_get_bridge_handle.exit:                  ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.d ], [ %i.r, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.not20 = icmp eq ptr %.0.i, null
  br i1 %.not20, label %.preheader, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %acpi_pci_get_bridge_handle.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 102        ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 108
  %i.v = getelementptr i8, ptr %0, i64 1736
  %i.w = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.bb, %.lr.ph
  %.258 = phi ptr [ %.0.i, %.lr.ph ], [ %i.mc, %bb.bb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.acpi_run_hpp.buffer, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store i64 0, ptr %4, align 8, !annotation !11
  %i.ad = call i32 @acpi_evaluate_object(ptr noundef nonnull %.258, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef nonnull %3) #10
  %.not.i26 = icmp eq i32 %i.ad, 0
  br i1 %.not.i26, label %bb.i, label %acpi_run_hpx.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.s, align 8             ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not41.i = icmp eq i32 %i.af, 4
  br i1 %.not41.i, label %.preheader.i, label %acpi_run_hpx.exit.thread32

.preheader.i:                                     ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 4      ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %.not139.i = icmp eq i32 %i.ah, 0
  br i1 %.not139.i, label %acpi_run_hpx.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  br label %bb.j

bb.j:                                             ; preds = %program_hpx_type1.exit.i, %.lr.ph.i
  %.029101.i = phi i32 [ 0, %.lr.ph.i ], [ %i.kr, %program_hpx_type1.exit.i ] ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = sext i32 %.029101.i to i64
  %i.al = getelementptr [24 x i8], ptr %i.aj, i64 %i.ak ; 6 uses
  %i.am = load i32, ptr %i.al, align 8
  %.not42.i = icmp eq i32 %i.am, 4
  br i1 %.not42.i, label %bb.k, label %acpi_run_hpx.exit.thread32

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 49 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %.not43.i = icmp eq i32 %i.ap, 1
  br i1 %.not43.i, label %bb.l, label %acpi_run_hpx.exit.thread32

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.ao, i64 24
  %i.ar = load i32, ptr %i.aq, align 8
  %.not44.i = icmp eq i32 %i.ar, 1
  br i1 %.not44.i, label %bb.m, label %acpi_run_hpx.exit.thread32

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  switch i32 %i.au, label %bb.au [
    i32 0, label %bb.n
    i32 1, label %bb.r
    i32 2, label %bb.w
    i32 3, label %bb.af
  ]

bb.n:                                             ; preds = %bb.m
  store i64 1, ptr %4, align 8
  %i.av = getelementptr i8, ptr %i.ao, i64 32
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %cond.i.i = icmp eq i32 %i.ax, 1
  br i1 %cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %i.al, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %.not.i.i28 = icmp eq i32 %i.az, 6
  br i1 %.not.i.i28, label %.preheader.preheader.i.i, label %acpi_run_hpx.exit.thread32

.preheader.preheader.i.i:                         ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %i.ao, i64 48
  %i.bb = load i32, ptr %i.ba, align 8
  %.not21.i.i = icmp eq i32 %i.bb, 1
  br i1 %.not21.i.i, label %.preheader.1.i.i, label %acpi_run_hpx.exit.thread32

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.bc = getelementptr i8, ptr %i.ao, i64 72
  %i.bd = load i32, ptr %i.bc, align 8
  %.not21.1.i.i = icmp eq i32 %i.bd, 1
  br i1 %.not21.1.i.i, label %.preheader.2.i.i, label %acpi_run_hpx.exit.thread32

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.be = getelementptr i8, ptr %i.ao, i64 96
  %i.bf = load i32, ptr %i.be, align 8
  %.not21.2.i.i = icmp eq i32 %i.bf, 1
  br i1 %.not21.2.i.i, label %.preheader.3.i.i, label %acpi_run_hpx.exit.thread32

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.bg = getelementptr i8, ptr %i.ao, i64 120
  %i.bh = load i32, ptr %i.bg, align 8
  %.not21.3.i.i = icmp eq i32 %i.bh, 1
  br i1 %.not21.3.i.i, label %bb.q, label %acpi_run_hpx.exit.thread32

bb.p:                                             ; preds = %bb.n
  %i.bi = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.decode_type0_hpx_record, i32 noundef %i.ax) #11 ; 0 uses
  br label %acpi_run_hpx.exit.thread32

bb.q:                                             ; preds = %.preheader.3.i.i
  %i.bj = getelementptr i8, ptr %i.ao, i64 56
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = trunc i64 %i.bk to i8
  store i8 %i.bl, ptr %i.y, align 4
  %i.bm = getelementptr i8, ptr %i.ao, i64 80
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = trunc i64 %i.bn to i8
  store i8 %i.bo, ptr %i.z, align 1
  %i.bp = getelementptr i8, ptr %i.ao, i64 104
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = trunc i64 %i.bq to i8
  store i8 %i.br, ptr %i.aa, align 2
  %i.bs = getelementptr i8, ptr %i.ao, i64 128
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = trunc i64 %i.bt to i8
  store i8 %i.bu, ptr %i.ab, align 1
  call fastcc void @program_hpx_type0(ptr noundef %0, ptr noundef nonnull %4) #12, !srcloc !18
  br label %program_hpx_type1.exit.i

bb.r:                                             ; preds = %bb.m
  %i.bv = getelementptr i8, ptr %i.ao, i64 32
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  %cond.i49.i = icmp eq i32 %i.bx, 1
  br i1 %cond.i49.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr i8, ptr %i.al, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %.not.i51.i = icmp eq i32 %i.bz, 5
  br i1 %.not.i51.i, label %.preheader.preheader.i52.i, label %acpi_run_hpx.exit.thread32

.preheader.preheader.i52.i:                       ; preds = %bb.s
  %i.ca = getelementptr i8, ptr %i.ao, i64 48
  %i.cb = load i32, ptr %i.ca, align 8
  %.not19.i.i = icmp eq i32 %i.cb, 1
  br i1 %.not19.i.i, label %.preheader.1.i53.i, label %acpi_run_hpx.exit.thread32

.preheader.1.i53.i:                               ; preds = %.preheader.preheader.i52.i
  %i.cc = getelementptr i8, ptr %i.ao, i64 72
  %i.cd = load i32, ptr %i.cc, align 8
  %.not19.1.i.i = icmp eq i32 %i.cd, 1
  br i1 %.not19.1.i.i, label %.preheader.2.i54.i, label %acpi_run_hpx.exit.thread32

.preheader.2.i54.i:                               ; preds = %.preheader.1.i53.i
  %i.ce = getelementptr i8, ptr %i.ao, i64 96
  %i.cf = load i32, ptr %i.ce, align 8
  %.not19.2.i.i = icmp eq i32 %i.cf, 1
  br i1 %.not19.2.i.i, label %bb.u, label %acpi_run_hpx.exit.thread32

bb.t:                                             ; preds = %bb.r
  %i.cg = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.decode_type1_hpx_record, i32 noundef %i.bx) #11 ; 0 uses
  br label %acpi_run_hpx.exit.thread32

bb.u:                                             ; preds = %.preheader.2.i54.i
  %i.ch = call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7) #10
  %.not3.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not3.i.i, label %program_hpx_type1.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.w, ptr noundef nonnull @.str.11) #11
  br label %program_hpx_type1.exit.i

bb.w:                                             ; preds = %bb.m
  %i.ci = getelementptr i8, ptr %i.ao, i64 32
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %cond.i56.i = icmp eq i32 %i.ck, 1
  br i1 %cond.i56.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr i8, ptr %i.al, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %.not.i58.i = icmp eq i32 %i.cm, 18
  br i1 %.not.i58.i, label %.preheader.preheader.i59.i, label %acpi_run_hpx.exit.thread32

.preheader.preheader.i59.i:                       ; preds = %bb.x
  %i.cn = getelementptr i8, ptr %i.ao, i64 48
  %i.co = load i32, ptr %i.cn, align 8
  %.not45.i.i = icmp eq i32 %i.co, 1
  br i1 %.not45.i.i, label %.preheader.1.i60.i, label %acpi_run_hpx.exit.thread32

.preheader.1.i60.i:                               ; preds = %.preheader.preheader.i59.i
  %i.cp = getelementptr i8, ptr %i.ao, i64 72
  %i.cq = load i32, ptr %i.cp, align 8
  %.not45.1.i.i = icmp eq i32 %i.cq, 1
  br i1 %.not45.1.i.i, label %.preheader.2.i61.i, label %acpi_run_hpx.exit.thread32
end_hunk_0
begin_hunk_1_@pci_acpi_program_hp_params:bb.a
  %i.dg = load i32, ptr %i.df, align 8
  %.not45.9.i.i = icmp eq i32 %i.dg, 1
  br i1 %.not45.9.i.i, label %.preheader.10.i.i, label %acpi_run_hpx.exit.thread32

.preheader.10.i.i:                                ; preds = %.preheader.9.i.i
  %i.dh = getelementptr i8, ptr %i.ao, i64 288
  %i.di = load i32, ptr %i.dh, align 8
  %.not45.10.i.i = icmp eq i32 %i.di, 1
  br i1 %.not45.10.i.i, label %.preheader.11.i.i, label %acpi_run_hpx.exit.thread32

.preheader.11.i.i:                                ; preds = %.preheader.10.i.i
  %i.dj = getelementptr i8, ptr %i.ao, i64 312
  %i.dk = load i32, ptr %i.dj, align 8
  %.not45.11.i.i = icmp eq i32 %i.dk, 1
  br i1 %.not45.11.i.i, label %.preheader.12.i.i, label %acpi_run_hpx.exit.thread32

.preheader.12.i.i:                                ; preds = %.preheader.11.i.i
  %i.dl = getelementptr i8, ptr %i.ao, i64 336
  %i.dm = load i32, ptr %i.dl, align 8
  %.not45.12.i.i = icmp eq i32 %i.dm, 1
  br i1 %.not45.12.i.i, label %.preheader.13.i.i, label %acpi_run_hpx.exit.thread32

.preheader.13.i.i:                                ; preds = %.preheader.12.i.i
  %i.dn = getelementptr i8, ptr %i.ao, i64 360
  %i.do = load i32, ptr %i.dn, align 8
  %.not45.13.i.i = icmp eq i32 %i.do, 1
  br i1 %.not45.13.i.i, label %.preheader.14.i.i, label %acpi_run_hpx.exit.thread32

.preheader.14.i.i:                                ; preds = %.preheader.13.i.i
  %i.dp = getelementptr i8, ptr %i.ao, i64 384
  %i.dq = load i32, ptr %i.dp, align 8
  %.not45.14.i.i = icmp eq i32 %i.dq, 1
  br i1 %.not45.14.i.i, label %.preheader.15.i.i, label %acpi_run_hpx.exit.thread32

.preheader.15.i.i:                                ; preds = %.preheader.14.i.i
  %i.dr = getelementptr i8, ptr %i.ao, i64 408
  %i.ds = load i32, ptr %i.dr, align 8
  %.not45.15.i.i = icmp eq i32 %i.ds, 1
  br i1 %.not45.15.i.i, label %bb.z, label %acpi_run_hpx.exit.thread32

bb.y:                                             ; preds = %bb.w
  %i.dt = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.decode_type2_hpx_record, i32 noundef %i.ck) #11 ; 0 uses
  br label %acpi_run_hpx.exit.thread32

bb.z:                                             ; preds = %.preheader.15.i.i
  %i.du = getelementptr i8, ptr %i.ao, i64 56
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr i8, ptr %i.ao, i64 80
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr i8, ptr %i.ao, i64 104
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr i8, ptr %i.ao, i64 128
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = getelementptr i8, ptr %i.ao, i64 152
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr i8, ptr %i.ao, i64 176
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = trunc i64 %i.ek to i32
  %i.em = getelementptr i8, ptr %i.ao, i64 200
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = trunc i64 %i.en to i32
  %i.ep = getelementptr i8, ptr %i.ao, i64 224
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr i8, ptr %i.ao, i64 248
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = trunc i64 %i.et to i16
  %i.ev = getelementptr i8, ptr %i.ao, i64 272
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = trunc i64 %i.ew to i16
  %i.ey = getelementptr i8, ptr %i.ao, i64 296
  %i.ez = load i64, ptr %i.ey, align 8            ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ao, i64 320
  %i.fb = load i64, ptr %i.fa, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %.val.i.i = load i8, ptr %i.t, align 2
  %.not54.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not54.i.i, label %program_hpx_type2.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.d, align 4, !annotation !11
  %i.fc = load ptr, ptr %i.x, align 8
  %i.fd = call ptr @pci_find_host_bridge(ptr noundef %i.fc) #10
  %i.fe = getelementptr i8, ptr %i.fd, i64 896
  %i.ff = load i16, ptr %i.fe, align 64
  %i.fg = and i16 %i.ff, 24
  %or.cond.i.i = icmp eq i16 %i.fg, 16
  br i1 %or.cond.i.i, label %bb.ab, label %program_hpx_type2.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.fh = and i16 %i.ex, 15
  %i.fi = and i16 %i.eu, 15
  %i.fj = xor i16 %i.fi, 15
  %i.fk = call i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef %0, i32 noundef 8, i16 noundef zeroext %i.fj, i16 noundef zeroext range(i16 0, 16) %i.fh) #10 ; 0 uses
  %i.fl = call zeroext i1 @pcie_cap_has_lnkctl(ptr noundef %0) #10
  br i1 %i.fl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fm = and i64 %i.ez, 65535
  %.not48.i.i = icmp eq i64 %i.fm, 65535
  %i.fn = and i64 %i.fb, 65535
  %.not49.i.i = icmp eq i64 %i.fn, 0
  %or.cond58.i.i = select i1 %.not48.i.i, i1 %.not49.i.i, i1 false
  br i1 %or.cond58.i.i, label %bb.ad, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ac
  %i.fo = trunc i64 %i.ez to i32
  %i.fp = and i32 %i.fo, 65535
  %i.fq = trunc i64 %i.fb to i32
  %i.fr = and i32 %i.fq, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.w, ptr noundef nonnull @.str.14, i32 noundef %i.fp, i32 noundef %i.fr) #11
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i, %bb.ac, %bb.ab
  %i.fs = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 1) #10 ; 2 uses
  %.not50.i.i = icmp eq i16 %i.fs, 0
  br i1 %.not50.i.i, label %program_hpx_type2.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ft = zext i16 %i.fs to i32                   ; 4 uses
  %i.fu = add nuw nsw i32 %i.ft, 8                ; 2 uses
  %i.fv = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.fu, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.fw = load i32, ptr %i.d, align 4
  %i.fx = and i32 %i.fw, %i.dw
  %i.fy = or i32 %i.fx, %i.dz                     ; 2 uses
  store i32 %i.fy, ptr %i.d, align 4
  %i.fz = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.fu, i32 noundef %i.fy) #10 ; 0 uses
  %i.ga = add nuw nsw i32 %i.ft, 12               ; 2 uses
  %i.gb = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.ga, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.gc = load i32, ptr %i.d, align 4
  %i.gd = and i32 %i.gc, %i.ec
  %i.ge = or i32 %i.gd, %i.ef                     ; 2 uses
  store i32 %i.ge, ptr %i.d, align 4
  %i.gf = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.ga, i32 noundef %i.ge) #10 ; 0 uses
  %i.gg = add nuw nsw i32 %i.ft, 20               ; 2 uses
  %i.gh = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.gg, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.gi = load i32, ptr %i.d, align 4
  %i.gj = and i32 %i.gi, %i.ei
  %i.gk = or i32 %i.gj, %i.el                     ; 2 uses
  store i32 %i.gk, ptr %i.d, align 4
  %i.gl = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.gg, i32 noundef %i.gk) #10 ; 0 uses
  %i.gm = add nuw nsw i32 %i.ft, 24               ; 2 uses
  %i.gn = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.gm, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.go = load i32, ptr %i.d, align 4
  %i.gp = and i32 %i.go, %i.eo
  %i.gq = or i32 %i.gp, %i.er                     ; 3 uses
  %i.gr = and i32 %i.gq, 32
  %.not51.i.i = icmp eq i32 %i.gr, 0
  %i.gs = and i32 %i.gq, -97
  %spec.select.i.i = select i1 %.not51.i.i, i32 %i.gs, i32 %i.gq ; 3 uses
  %i.gt = and i32 %spec.select.i.i, 128
  %.not52.i.i = icmp eq i32 %i.gt, 0
  %i.gu = and i32 %spec.select.i.i, -385
  %storemerge53.i.i = select i1 %.not52.i.i, i32 %i.gu, i32 %spec.select.i.i ; 2 uses
  store i32 %storemerge53.i.i, ptr %i.d, align 4
  %i.gv = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.gm, i32 noundef %storemerge53.i.i) #10 ; 0 uses
  br label %program_hpx_type2.exit.i

program_hpx_type2.exit.i:                         ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %program_hpx_type1.exit.i

bb.af:                                            ; preds = %bb.m
  %i.gw = getelementptr i8, ptr %i.ao, i64 32
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = trunc i64 %i.gx to i32                  ; 2 uses
  %cond.i64.i = icmp eq i32 %i.gy, 1
  br i1 %cond.i64.i, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.gz = getelementptr i8, ptr %i.ao, i64 56
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = trunc i64 %i.ha to i32                  ; 3 uses
  %i.hc = mul i32 %i.hb, 14                       ; 2 uses
  %i.hd = add i32 %i.hc, 3                        ; 2 uses
  %i.he = getelementptr i8, ptr %i.al, i64 4
  %i.hf = load i32, ptr %i.he, align 4
  %.not.i66.i = icmp eq i32 %i.hf, %i.hd
  br i1 %.not.i66.i, label %.preheader30.i.i, label %acpi_run_hpx.exit.thread32

.preheader30.i.i:                                 ; preds = %bb.ag
  %i.hg = icmp ult i32 %i.hc, -3
  br i1 %i.hg, label %.lr.ph.i.i, label %.preheader.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.hh = add nuw i32 %.02032.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.hh, %i.hd
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !14

.preheader.i.i:                                   ; preds = %bb.ah, %.preheader30.i.i
  %.not35.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not35.i.i, label %program_hpx_type1.exit.i, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.preheader.i.i
  %i.hi = getelementptr i8, ptr %i.ao, i64 72
  br label %.lr.ph34.split.i.i

.lr.ph.i.i:                                       ; preds = %.preheader30.i.i, %bb.ah
  %.02032.i.i = phi i32 [ %i.hh, %bb.ah ], [ 2, %.preheader30.i.i ] ; 2 uses
  %i.hj = sext i32 %.02032.i.i to i64
  %i.hk = getelementptr [24 x i8], ptr %i.ao, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 8
  %.not23.i.i = icmp eq i32 %i.hl, 1
  br i1 %.not23.i.i, label %bb.ah, label %acpi_run_hpx.exit.thread32

.lr.ph34.split.i.i:                               ; preds = %program_hpx_type3.exit.i.i, %.lr.ph34.i.i
  %.133.i.i = phi i32 [ 0, %.lr.ph34.i.i ], [ %i.ko, %program_hpx_type3.exit.i.i ] ; 2 uses
  %i.hm = mul i32 %.133.i.i, 14
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr [24 x i8], ptr %i.hi, i64 %i.hn ; 11 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = trunc i64 %i.hq to i16
  %i.hs = getelementptr i8, ptr %i.ho, i64 32
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = trunc i64 %i.ht to i16
  %i.hv = getelementptr i8, ptr %i.ho, i64 56
  %i.hw = load i64, ptr %i.hv, align 8
  %i.hx = trunc i64 %i.hw to i16                  ; 2 uses
  %i.hy = getelementptr i8, ptr %i.ho, i64 80
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = getelementptr i8, ptr %i.ho, i64 104
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = getelementptr i8, ptr %i.ho, i64 200
  %i.ie = load i64, ptr %i.id, align 8
  %i.if = trunc i64 %i.ie to i32
  %i.ig = getelementptr i8, ptr %i.ho, i64 224
  %i.ih = load i64, ptr %i.ig, align 8
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = getelementptr i8, ptr %i.ho, i64 248
  %i.ik = load i64, ptr %i.ij, align 8
  %i.il = trunc i64 %i.ik to i32
  %i.im = getelementptr i8, ptr %i.ho, i64 272
  %i.in = load i64, ptr %i.im, align 8
  %i.io = trunc i64 %i.in to i32
  %i.ip = getelementptr i8, ptr %i.ho, i64 296
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = trunc i64 %i.iq to i32
  %i.is = getelementptr i8, ptr %i.ho, i64 320
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = trunc i64 %i.it to i32
  %.val.i.i.i = load i8, ptr %i.t, align 2
  %.not4.i.i.i = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not4.i.i.i, label %program_hpx_type3.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph34.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %.val.i.i.i.i = load i16, ptr %i.u, align 4
  %i.iv = lshr i16 %.val.i.i.i.i, 4
  %i.iw = and i16 %i.iv, 15                       ; 2 uses
  %i.ix = icmp samesign ugt i16 %i.iw, 10
  br i1 %i.ix, label %program_hpx_type3_register.exit.i.i.i, label %hpx3_device_type.exit.i.i.i.i

hpx3_device_type.exit.i.i.i.i:                    ; preds = %bb.ai
  %i.iy = zext nneg i16 %i.iw to i64
  %i.iz = getelementptr [4 x i8], ptr @hpx3_device_type.pcie_to_hpx3_type, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = trunc i32 %i.ja to i16
  %i.jc = and i16 %i.jb, %i.hr
  %i.jd = icmp eq i16 %i.jc, 0
  br i1 %i.jd, label %program_hpx_type3_register.exit.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %hpx3_device_type.exit.i.i.i.i
  %i.je = load i32, ptr %i.v, align 8
  %i.jf = and i32 %i.je, 16777216
  %.not.i.i.i.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i.i.i.i, label %bb.ak, label %hpx3_function_type.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.jg = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 16) #10
  %.not2.i.i.i.i.i = icmp eq i16 %i.jg, 0
  %i.jh = select i1 %.not2.i.i.i.i.i, i16 1, i16 2
  br label %hpx3_function_type.exit.i.i.i.i

hpx3_function_type.exit.i.i.i.i:                  ; preds = %bb.ak, %bb.aj
  %.0.i32.i.i.i.i = phi i16 [ 4, %bb.aj ], [ %i.jh, %bb.ak ]
  %i.ji = and i16 %.0.i32.i.i.i.i, %i.hu
  %.not30.i.i.i.i = icmp eq i16 %i.ji, 0
  br i1 %.not30.i.i.i.i, label %program_hpx_type3_register.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %hpx3_function_type.exit.i.i.i.i
  store i32 0, ptr %i.a, align 4, !annotation !11
  store i32 0, ptr %i.b, align 4, !annotation !11
  store i32 0, ptr %i.c, align 4, !annotation !11
  switch i16 %i.hx, label %bb.ap [
    i16 0, label %bb.aq
    i16 1, label %bb.am
    i16 2, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  %i.jj = and i32 %i.ia, 65535
  %i.jk = call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef %i.jj) #10 ; 2 uses
  %i.jl = zext i8 %i.jk to i16
  %i.jm = icmp eq i8 %i.jk, 0
  br i1 %i.jm, label %program_hpx_type3_register.exit.i.i.i, label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.jn = and i32 %i.ia, 65535
  %i.jo = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef %i.jn) #10 ; 3 uses
  %i.jp = icmp eq i16 %i.jo, 0
  br i1 %i.jp, label %program_hpx_type3_register.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jq = zext i16 %i.jo to i32
  %i.jr = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.jq, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.js = load i32, ptr %i.c, align 4
  %i.jt = lshr i32 %i.js, 16
  %i.ju = trunc i32 %i.jt to i8
  %i.jv = and i8 %i.ju, 15                        ; 2 uses
  %i.jw = trunc i64 %i.ic to i8                   ; 2 uses
  %i.jx = and i8 %i.jw, 15                        ; 2 uses
  %i.jy = and i8 %i.jw, 16
  %.not.not.i.i.i.i.i = icmp eq i8 %i.jy, 0
  %.not6.i.i.i.i.i = icmp samesign uge i8 %i.jx, %i.jv
  %i.jz = icmp eq i8 %i.jx, %i.jv
  %.0.i33.i.i.i.i = select i1 %.not.not.i.i.i.i.i, i1 %i.jz, i1 %.not6.i.i.i.i.i
  br i1 %.0.i33.i.i.i.i, label %bb.aq, label %program_hpx_type3_register.exit.i.i.i

bb.ap:                                            ; preds = %bb.al
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.w, ptr noundef nonnull @.str.16) #11
  br label %program_hpx_type3_register.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao, %bb.am, %bb.al
  %.0.i.i.i.i = phi i16 [ %i.jo, %bb.ao ], [ %i.jl, %bb.am ], [ %i.hx, %bb.al ]
  %i.ka = zext i16 %.0.i.i.i.i to i32             ; 2 uses
  %i.kb = and i32 %i.if, 65535
  %i.kc = add nuw nsw i32 %i.kb, %i.ka
  %i.kd = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.kc, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.ke = load i32, ptr %i.a, align 4
  %i.kf = and i32 %i.ke, %i.ii
  %.not31.i.i.i.i = icmp eq i32 %i.kf, %i.il
  br i1 %.not31.i.i.i.i, label %bb.ar, label %program_hpx_type3_register.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.kg = and i32 %i.io, 65535
  %i.kh = add nuw nsw i32 %i.kg, %i.ka            ; 2 uses
  %i.ki = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.kh, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.kj = load i32, ptr %i.b, align 4             ; 2 uses
  %i.kk = and i32 %i.kj, %i.ir
  %i.kl = or i32 %i.kk, %i.iu                     ; 3 uses
  store i32 %i.kl, ptr %i.b, align 4
  %i.km = icmp eq i32 %i.kj, %i.kl
  br i1 %i.km, label %program_hpx_type3_register.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kn = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %i.kh, i32 noundef %i.kl) #10 ; 0 uses
  br label %program_hpx_type3_register.exit.i.i.i

program_hpx_type3_register.exit.i.i.i:            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %hpx3_function_type.exit.i.i.i.i, %hpx3_device_type.exit.i.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %program_hpx_type3.exit.i.i

program_hpx_type3.exit.i.i:                       ; preds = %program_hpx_type3_register.exit.i.i.i, %.lr.ph34.split.i.i
  %i.ko = add nuw i32 %.133.i.i, 1                ; 2 uses
  %exitcond38.not.i.i = icmp eq i32 %i.ko, %i.hb
  br i1 %exitcond38.not.i.i, label %program_hpx_type1.exit.i, label %.lr.ph34.split.i.i, !llvm.loop !15

bb.at:                                            ; preds = %bb.af
  %i.kp = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.program_type3_hpx_record, i32 noundef %i.gy) #11 ; 0 uses
  br label %acpi_run_hpx.exit.thread32

bb.au:                                            ; preds = %bb.m
  %i.kq = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.acpi_run_hpx, i32 noundef %i.au) #11 ; 0 uses
  br label %acpi_run_hpx.exit.thread32

program_hpx_type1.exit.i:                         ; preds = %program_hpx_type3.exit.i.i, %.preheader.i.i, %program_hpx_type2.exit.i, %bb.v, %bb.u, %bb.q
  %i.kr = add nuw i32 %.029101.i, 1               ; 2 uses
  %i.ks = load i32, ptr %i.ag, align 4
  %i.kt = icmp ult i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.j, label %acpi_run_hpx.exit.loopexit, !llvm.loop !16

acpi_run_hpx.exit.thread32:                       ; preds = %.preheader.preheader.i59.i, %.preheader.2.i61.i, %.preheader.3.i62.i, %.preheader.4.i.i, %.preheader.5.i.i, %.preheader.6.i.i, %.preheader.7.i.i, %.preheader.8.i.i, %.preheader.9.i.i, %.preheader.10.i.i, %.preheader.11.i.i, %.preheader.12.i.i, %.preheader.13.i.i, %.preheader.14.i.i, %.preheader.15.i.i, %bb.x, %.preheader.preheader.i52.i, %.preheader.2.i54.i, %bb.s, %.preheader.preheader.i.i, %.preheader.2.i.i, %.preheader.3.i.i, %bb.o, %bb.k, %bb.j, %.preheader.1.i60.i, %.preheader.1.i53.i, %.preheader.1.i.i, %bb.l, %bb.ag, %.lr.ph.i.i, %bb.at, %bb.i, %bb.au, %bb.p, %bb.t, %bb.y
  %i.ku = load ptr, ptr %i.s, align 8
  call void @kfree(ptr noundef %i.ku) #10
  br label %acpi_run_hpx.exit.thread

acpi_run_hpx.exit.loopexit:                       ; preds = %program_hpx_type1.exit.i
  %.pre = load ptr, ptr %i.s, align 8
  br label %acpi_run_hpx.exit

acpi_run_hpx.exit:                                ; preds = %.preheader.i, %acpi_run_hpx.exit.loopexit
  %i.kv = phi ptr [ %.pre, %acpi_run_hpx.exit.loopexit ], [ %i.ae, %.preheader.i ]
  call void @kfree(ptr noundef %i.kv) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.loopexit

acpi_run_hpx.exit.thread:                         ; preds = %bb.h, %acpi_run_hpx.exit.thread32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) @__const.acpi_run_hpp.buffer, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store i64 0, ptr %2, align 8
  %i.kw = call i32 @acpi_evaluate_object(ptr noundef nonnull %.258, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef nonnull %1) #10
  %.not.i29 = icmp eq i32 %i.kw, 0
  br i1 %.not.i29, label %bb.av, label %acpi_run_hpp.exit.thread

bb.av:                                            ; preds = %acpi_run_hpx.exit.thread
  %i.kx = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ky = load i32, ptr %i.kx, align 8
  %.not19.i = icmp eq i32 %i.ky, 4
  br i1 %.not19.i, label %bb.aw, label %acpi_run_hpp.exit.thread37

bb.aw:                                            ; preds = %bb.av
  %i.kz = getelementptr i8, ptr %i.kx, i64 4
  %i.la = load i32, ptr %i.kz, align 4
  %.not20.i = icmp eq i32 %i.la, 4
  br i1 %.not20.i, label %bb.ax, label %acpi_run_hpp.exit.thread37

bb.ax:                                            ; preds = %bb.aw
  %i.lb = getelementptr i8, ptr %i.kx, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8            ; 8 uses
  %i.ld = load i32, ptr %i.lc, align 8
  %.not21.i = icmp eq i32 %i.ld, 1
  br i1 %.not21.i, label %bb.ay, label %acpi_run_hpp.exit.thread37

bb.ay:                                            ; preds = %bb.ax
  %i.le = getelementptr i8, ptr %i.lc, i64 24
  %i.lf = load i32, ptr %i.le, align 8
  %.not21.1.i = icmp eq i32 %i.lf, 1
  br i1 %.not21.1.i, label %bb.az, label %acpi_run_hpp.exit.thread37

bb.az:                                            ; preds = %bb.ay
  %i.lg = getelementptr i8, ptr %i.lc, i64 48
  %i.lh = load i32, ptr %i.lg, align 8
  %.not21.2.i = icmp eq i32 %i.lh, 1
  br i1 %.not21.2.i, label %bb.ba, label %acpi_run_hpp.exit.thread37

bb.ba:                                            ; preds = %bb.az
  %i.li = getelementptr i8, ptr %i.lc, i64 72
  %i.lj = load i32, ptr %i.li, align 8
  %.not21.3.i = icmp eq i32 %i.lj, 1
  br i1 %.not21.3.i, label %acpi_run_hpp.exit, label %acpi_run_hpp.exit.thread37

acpi_run_hpp.exit.thread37:                       ; preds = %bb.av, %bb.aw, %bb.ba, %bb.az, %bb.ay, %bb.ax
  call void @kfree(ptr noundef %i.kx) #10
  br label %acpi_run_hpp.exit.thread

acpi_run_hpp.exit:                                ; preds = %bb.ba
  store i32 1, ptr %2, align 8
  %i.lk = getelementptr i8, ptr %i.lc, i64 8
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = trunc i64 %i.ll to i8
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.lm, ptr %i.ln, align 4
  %i.lo = getelementptr i8, ptr %i.lc, i64 32
  %i.lp = load i64, ptr %i.lo, align 8
  %i.lq = trunc i64 %i.lp to i8
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.lq, ptr %i.lr, align 1
  %i.ls = getelementptr i8, ptr %i.lc, i64 56
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = trunc i64 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.lu, ptr %i.lv, align 2
  %i.lw = getelementptr i8, ptr %i.lc, i64 80
  %i.lx = load i64, ptr %i.lw, align 8
  %i.ly = trunc i64 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.ly, ptr %i.lz, align 1
  call fastcc void @program_hpx_type0(ptr noundef %0, ptr noundef nonnull %2) #12, !srcloc !19
  %.pre.i = load ptr, ptr %i.ac, align 8
  call void @kfree(ptr noundef %.pre.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.loopexit

acpi_run_hpp.exit.thread:                         ; preds = %acpi_run_hpx.exit.thread, %acpi_run_hpp.exit.thread37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.ma = call i32 @acpi_is_root_bridge(ptr noundef nonnull %.258) #10
  %.not24 = icmp eq i32 %i.ma, 0
  br i1 %.not24, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %acpi_run_hpp.exit.thread
  %i.mb = call i32 @acpi_get_parent(ptr noundef nonnull %.258, ptr noundef nonnull %i.e) #10
  %.not25 = icmp ne i32 %i.mb, 0
  %i.mc = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not21 = icmp eq ptr %i.mc, null
  %or.cond = select i1 %.not25, i1 true, i1 %.not21
  br i1 %or.cond, label %.loopexit, label %bb.h, !llvm.loop !17

.loopexit:                                        ; preds = %.preheader, %bb.bb, %acpi_run_hpp.exit.thread, %acpi_run_hpp.exit, %acpi_run_hpx.exit, %bb.a
  %.016 = phi i32 [ -19, %bb.a ], [ 0, %acpi_run_hpp.exit ], [ 0, %acpi_run_hpx.exit ], [ -19, %bb.bb ], [ -19, %acpi_run_hpp.exit.thread ], [ -19, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret i32 %.016
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_is_root_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef zeroext i1 @pciehp_is_native(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  ret i1 false
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @shpchp_is_native(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1736
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 134217728
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @pci_acpi_add_root_pm_notifier(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 272
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 @acpi_add_pm_notifier(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @pci_acpi_wake_bus) #10
  ret i32 %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_add_pm_notifier(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_acpi_wake_bus(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 760
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @pci_pme_wakeup_bus(ptr noundef %i.d) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @pci_acpi_add_pm_notifier(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 200
  %i.b = tail call i32 @acpi_add_pm_notifier(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @pci_acpi_wake_dev) #10
  ret i32 %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_acpi_wake_dev(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -200
  %i.d = getelementptr i8, ptr %i.b, i64 -35      ; 2 uses
  %i.e = load i16, ptr %i.d, align 1              ; 3 uses
  %i.f = and i16 %i.e, 32
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i16 %i.e, -33                        ; 2 uses
  store i16 %i.g, ptr %i.d, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i16 [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %i.i = getelementptr i8, ptr %i.b, i64 -40
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @pm_wakeup_dev_event(ptr noundef %i.b, i32 noundef 100, i1 noundef zeroext false) #10
  %i.l = tail call i32 @__pm_runtime_resume(ptr noundef %i.b, i32 noundef 1) #10 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = and i16 %i.h, 31
  %.not13 = icmp eq i16 %i.m, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call zeroext i1 @pci_check_pme_status(ptr noundef %i.c) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @pm_wakeup_dev_event(ptr noundef %i.b, i32 noundef 100, i1 noundef zeroext false) #10
  %i.o = tail call i32 @__pm_runtime_resume(ptr noundef %i.b, i32 noundef 1) #10 ; 0 uses
  %i.p = getelementptr i8, ptr %i.b, i64 -176
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @pci_pme_wakeup_bus(ptr noundef %i.q) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 5) i32 @acpi_pci_choose_state(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 165
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 20480
  %or.cond.not = icmp eq i16 %i.c, 16384
  %.0 = select i1 %or.cond.not, i32 4, i32 3
  %i.d = getelementptr i8, ptr %0, i64 200
  %i.e = tail call i32 @acpi_pm_device_sleep_state(ptr noundef %i.d, ptr noundef null, i32 noundef %.0) #10 ; 2 uses
  %i.f = icmp ult i32 %i.e, 5
  %.06 = select i1 %i.f, i32 %i.e, i32 -1
  ret i32 %.06
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_pm_device_sleep_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @pci_set_acpi_fwnode(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200        ; 4 uses
  %i.b = tail call ptr @__dev_fwnode(ptr noundef %i.a) #10
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %pci_dev_is_added.exit, label %bb.e

pci_dev_is_added.exit:                            ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1928
  %i.d = load volatile i64, ptr %i.c, align 8
  %.in.i = trunc i64 %i.d to i1
  br i1 %.in.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %pci_dev_is_added.exit
  %i.e = tail call fastcc ptr @acpi_pci_find_companion(ptr noundef %i.a) #12, !srcloc !20
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc ptr @acpi_pci_find_companion(ptr noundef %i.a) #12, !srcloc !21
  %i.g = getelementptr i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  tail call void @set_primary_fwnode(ptr noundef %i.a, ptr noundef %i.h) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %pci_dev_is_added.exit, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_primary_fwnode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @acpi_pci_find_companion(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -200
  %i.b = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @down_read(ptr noundef nonnull @pci_acpi_companion_lookup_sem) #10
  %i.d = load ptr, ptr @pci_acpi_find_companion_hook, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.d, null
  br i1 %.not27, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void @up_read(ptr noundef nonnull @pci_acpi_companion_lookup_sem) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr %i.d(ptr noundef %i.a) #10 ; 2 uses
  tail call void @up_read(ptr noundef nonnull @pci_acpi_companion_lookup_sem) #10
  %.not28 = icmp eq ptr %i.e, null
  br i1 %.not28, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.thread, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 -127
  %.val30 = load i8, ptr %i.f, align 1
  %i.g = add i8 %.val30, -1
  %spec.select.i = icmp ult i8 %i.g, 2
  %i.h = getelementptr i8, ptr %0, i64 -144
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = shl i32 %i.i, 13
  %i.k = and i32 %i.j, 2031616
  %i.l = and i32 %i.i, 7
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 656
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.q) #10
  %i.s = getelementptr i8, ptr %i.q, i64 -16
  %spec.select = select i1 %i.r, ptr %i.s, ptr null
  %i.t = tail call ptr @acpi_find_child_device(ptr noundef %spec.select, i64 noundef %i.n, i1 noundef zeroext %spec.select.i) #10 ; 3 uses
  %.not29 = icmp eq ptr %i.t, null
  br i1 %.not29, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.t, i64 132
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 4
  %i.x = icmp eq i32 %i.w, 0
  %i.y = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %0, i64 -184
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %.val = load ptr, ptr %i.ab, align 8
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.a, %bb.g
  %.0 = phi ptr [ null, %bb.a ], [ %i.t, %bb.g ], [ %i.e, %bb.c ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @pci_dev_acpi_reset(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 856
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.c) #10
  %i.e = getelementptr i8, ptr %i.c, i64 -16
  %.not.i25 = icmp ne ptr %i.e, null
  %.not.i.not = and i1 %i.d, %.not.i25
  br i1 %.not.i.not, label %acpi_device_handle.exit, label %acpi_device_handle.exit.thread

acpi_device_handle.exit:                          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %acpi_device_handle.exit.thread, label %bb.b

bb.b:                                             ; preds = %acpi_device_handle.exit
  %i.h = tail call zeroext i1 @acpi_has_method(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1) #10 ; 2 uses
  %.not23 = xor i1 %i.h, true
  %brmerge = or i1 %1, %.not23
  %.mux = select i1 %i.h, i32 0, i32 -25
  br i1 %brmerge, label %acpi_device_handle.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @pci_dev_reset_iommu_prepare(ptr noundef %0) #10 ; 3 uses
  %.not21 = icmp eq i32 %i.i, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.a, ptr noundef nonnull @.str.2, i32 noundef %i.i) #11
  br label %acpi_device_handle.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.j = tail call i32 @acpi_evaluate_object(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null) #10
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.a, ptr noundef nonnull @.str.3) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ -25, %bb.f ], [ 0, %bb.e ]
  tail call void @pci_dev_reset_iommu_done(ptr noundef %0) #10
  br label %acpi_device_handle.exit.thread

acpi_device_handle.exit.thread:                   ; preds = %bb.a, %bb.b, %acpi_device_handle.exit, %bb.g, %bb.d
  %.018 = phi i32 [ -25, %acpi_device_handle.exit ], [ %i.i, %bb.d ], [ %.0, %bb.g ], [ %.mux, %bb.b ], [ -25, %bb.a ]
  ret i32 %.018
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_dev_reset_iommu_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_dev_reset_iommu_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @acpi_pci_power_manageable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #10
  %i.d = getelementptr i8, ptr %i.b, i64 -16
  %.not8 = icmp ne ptr %i.d, null
  %.not.not = and i1 %i.c, %.not8
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 100
  %spec.select.val = load i32, ptr %i.e, align 4
  %i.f = and i32 %spec.select.val, 8
  %i.g = icmp ne i32 %i.f, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @acpi_pci_bridge_d3(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr @acpi_pci_disabled, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %pcie_find_root_port.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1736
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 67108864
  %.not31 = icmp eq i32 %i.e, 0
  br i1 %.not31, label %pcie_find_root_port.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !annotation !11
  %i.f = getelementptr i8, ptr %0, i64 856
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.g) #10
  %i.i = getelementptr i8, ptr %i.g, i64 -16      ; 2 uses
  %spec.select = select i1 %i.h, ptr %i.i, ptr null ; 4 uses
  %.not32 = icmp eq ptr %spec.select, null
  br i1 %.not32, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i8 @acpi_dev_power_state_for_wake(ptr noundef nonnull %i.i) #10
  %i.k = icmp ult i8 %i.j, 3
  br i1 %i.k, label %pcie_find_root_port.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %spec.select, i64 116
  %spec.select.val = load i32, ptr %i.l, align 4
  %i.m = and i32 %spec.select.val, 8
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %bb.f, label %pcie_find_root_port.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.c
  %.not10.i = icmp eq ptr %0, null
  br i1 %.not10.i, label %pcie_find_root_port.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %pci_upstream_bridge.exit.i
  %.011.i = phi ptr [ %i.u, %pci_upstream_bridge.exit.i ], [ %0, %bb.f ] ; 5 uses
  %i.n = getelementptr i8, ptr %.011.i, i64 102
  %.0.val.i = load i8, ptr %i.n, align 2
  %.not9.i = icmp eq i8 %.0.val.i, 0
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr i8, ptr %.011.i, i64 108
  %.0.val7.i = load i16, ptr %i.o, align 4
  %i.p = and i16 %.0.val7.i, 240
  %i.q = icmp eq i16 %i.p, 64
  br i1 %i.q, label %pcie_find_root_port.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.r = getelementptr i8, ptr %.011.i, i64 16
  %.0.val8.i = load ptr, ptr %i.r, align 8        ; 2 uses
  %i.s = getelementptr i8, ptr %.0.val8.i, i64 16
  %.val.i.i = load ptr, ptr %i.s, align 8
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %pcie_find_root_port.exit.thread, label %pci_upstream_bridge.exit.i

pci_upstream_bridge.exit.i:                       ; preds = %bb.h
  %i.t = getelementptr i8, ptr %.0.val8.i, i64 56
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %pcie_find_root_port.exit.thread, label %.lr.ph.i, !llvm.loop !22

pcie_find_root_port.exit:                         ; preds = %bb.g
  %i.v = icmp eq ptr %.011.i, %0
  br i1 %i.v, label %select.unfold, label %bb.i

bb.i:                                             ; preds = %pcie_find_root_port.exit
  %i.w = getelementptr i8, ptr %.011.i, i64 856
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.x) #10
  %i.z = getelementptr i8, ptr %i.x, i64 -16
  br i1 %i.y, label %select.unfold, label %pcie_find_root_port.exit.thread

select.unfold:                                    ; preds = %bb.i, %pcie_find_root_port.exit
  %.028 = phi ptr [ %spec.select, %pcie_find_root_port.exit ], [ %i.z, %bb.i ] ; 5 uses
  %.not34 = icmp eq ptr %.028, null
  br i1 %.not34, label %pcie_find_root_port.exit.thread, label %bb.j

bb.j:                                             ; preds = %select.unfold
  %i.aa = getelementptr i8, ptr %.028, i64 448
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, 1
  %.not35 = icmp eq i8 %i.ac, 0
  br i1 %.not35, label %pcie_find_root_port.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not36 = icmp eq ptr %.028, %spec.select
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call zeroext i8 @acpi_dev_power_state_for_wake(ptr noundef nonnull %.028) #10
  %i.ae = icmp ult i8 %i.ad, 3
  br i1 %i.ae, label %pcie_find_root_port.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = call i32 @acpi_dev_get_property(ptr noundef nonnull %.028, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef nonnull %i.a) #10
  %.not37 = icmp eq i32 %i.af, 0
  br i1 %.not37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %pcie_find_root_port.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %pcie_find_root_port.exit.thread

pcie_find_root_port.exit.thread:                  ; preds = %pci_upstream_bridge.exit.i, %bb.h, %bb.i, %bb.f, %bb.n, %bb.l, %bb.j, %select.unfold, %bb.e, %bb.d, %bb.a, %bb.b, %bb.o
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.o ], [ false, %bb.l ], [ false, %select.unfold ], [ false, %bb.i ], [ false, %bb.b ], [ true, %bb.n ], [ false, %bb.f ], [ false, %bb.h ], [ false, %pci_upstream_bridge.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @acpi_dev_power_state_for_wake(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_dev_get_property(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_pci_set_power_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 200
  %i.b = getelementptr i8, ptr %0, i64 856        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.c) #10
  %i.e = getelementptr i8, ptr %i.c, i64 -16      ; 2 uses
  %.not22 = icmp ne ptr %i.e, null
  %.not.not = and i1 %i.d, %.not22
  br i1 %.not.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 @acpi_has_method(ptr noundef %i.g, ptr noundef nonnull @.str.5) #10
  br i1 %i.h, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %switch = icmp ult i32 %1, 5
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 4
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @dev_pm_qos_flags(ptr noundef %i.a, i32 noundef 1) #10
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val21 = load ptr, ptr %i.b, align 8           ; 3 uses
  %i.l = tail call zeroext i1 @is_acpi_device_node(ptr noundef %.val21) #10
  %i.m = getelementptr i8, ptr %.val21, i64 -16
  %.not.i1.i = icmp ne ptr %i.m, null
  %.not.i.not.i = and i1 %i.l, %.not.i1.i
  br i1 %.not.i.not.i, label %bb.g, label %acpi_pci_config_space_access.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %.val21, i64 -8
  %i.o = load ptr, ptr %i.n, align 8
  br label %acpi_pci_config_space_access.exit

acpi_pci_config_space_access.exit:                ; preds = %bb.f, %bb.g
  %i.p = phi ptr [ %i.o, %bb.g ], [ null, %bb.f ]
  %i.q = tail call i32 @acpi_evaluate_reg(ptr noundef %i.p, i8 noundef zeroext 2, i32 noundef 0) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %acpi_pci_config_space_access.exit, %bb.d
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr i8, ptr @acpi_pci_set_power_state.state_conv, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = tail call i32 @acpi_device_set_power(ptr noundef nonnull %i.e, i32 noundef %i.u) #10 ; 2 uses
  %.not20 = icmp eq i32 %i.v, 0
  br i1 %.not20, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i32 %1, 0
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.val = load ptr, ptr %i.b, align 8
  tail call fastcc void @acpi_pci_config_space_access(ptr %.val, i1 noundef zeroext true) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.e, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ %i.v, %bb.h ], [ -19, %bb.a ], [ -22, %bb.c ], [ -16, %bb.e ], [ -19, %bb.b ], [ 0, %bb.j ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @acpi_pci_config_space_access(ptr %.856.val, i1 noundef zeroext %0) unnamed_addr #0 align 16 {
bb.a:
  %i.a = tail call zeroext i1 @is_acpi_device_node(ptr noundef %.856.val) #10
  %i.b = getelementptr i8, ptr %.856.val, i64 -16
  %.not.i1 = icmp ne ptr %i.b, null
  %.not.i.not = and i1 %.not.i1, %i.a
  br i1 %.not.i.not, label %bb.b, label %acpi_device_handle.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.856.val, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  br label %acpi_device_handle.exit

acpi_device_handle.exit:                          ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.f = zext i1 %0 to i32
  %i.g = tail call i32 @acpi_evaluate_reg(ptr noundef %i.e, i8 noundef zeroext 2, i32 noundef %i.f) #10 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_device_set_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @acpi_pci_get_power_state(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #10
  %i.d = getelementptr i8, ptr %i.b, i64 -16
  %.not13 = icmp ne ptr %i.d, null
  %.not.not = and i1 %i.c, %.not13
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 100
  %spec.select.val = load i32, ptr %i.e, align 4
  %i.f = and i32 %spec.select.val, 8
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 216
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 255
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr [4 x i8], ptr @acpi_pci_get_power_state.state_conv, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 5, %bb.a ], [ %i.l, %bb.d ], [ 5, %bb.b ], [ 5, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_pci_refresh_power_state(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call zeroext i1 @is_acpi_device_node(ptr noundef %i.b) #10
end_hunk_1
begin_hunk_2_@acpi_evaluate_dsm

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @program_hpx_type0(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @pci_default_type0, ptr %1 ; 2 uses
  %i.c = load i32, ptr %spec.store.select, align 4 ; 2 uses
  %i.d = icmp ugt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 200
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.e, ptr noundef nonnull @.str.9, i32 noundef %i.c) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ @pci_default_type0, %bb.b ], [ %spec.store.select, %bb.a ] ; 4 uses
  store i16 0, ptr %i.a, align 2, !annotation !11
  store i16 0, ptr %i.b, align 2, !annotation !11
  %i.f = getelementptr i8, ptr %.0, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 12, i8 noundef zeroext %i.g) #10 ; 0 uses
  %i.i = getelementptr i8, ptr %.0, i64 5         ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 13, i8 noundef zeroext %i.j) #10 ; 0 uses
  %i.l = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.m = getelementptr i8, ptr %.0, i64 6
  %i.n = load i8, ptr %i.m, align 2
  %.not19 = icmp eq i8 %i.n, 0
  %.pre.pre = load i16, ptr %i.a, align 2         ; 2 uses
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = or i16 %.pre.pre, 256                    ; 2 uses
  store i16 %i.o, ptr %i.a, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre = phi i16 [ %i.o, %bb.d ], [ %.pre.pre, %bb.c ] ; 2 uses
  %i.p = getelementptr i8, ptr %.0, i64 7         ; 2 uses
  %i.q = load i8, ptr %i.p, align 1
  %.not20 = icmp eq i8 %i.q, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = or i16 %.pre, 64                         ; 2 uses
  store i16 %i.r, ptr %i.a, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i16 [ %i.r, %bb.f ], [ %.pre, %bb.e ]
  %i.t = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %i.s) #10 ; 0 uses
  %i.u = getelementptr i8, ptr %0, i64 68
  %i.v = load i32, ptr %i.u, align 4
  %.mask = and i32 %i.v, -256
  %i.w = icmp eq i32 %.mask, 394240
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.i, align 1
  %i.y = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 27, i8 noundef zeroext %i.x) #10 ; 0 uses
  %i.z = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.aa = load i8, ptr %i.p, align 1
  %.not21 = icmp eq i8 %i.aa, 0
  %.pre22 = load i16, ptr %i.b, align 2           ; 2 uses
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = or i16 %.pre22, 1                       ; 2 uses
  store i16 %i.ab, ptr %i.b, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi i16 [ %i.ab, %bb.i ], [ %.pre22, %bb.h ]
  %i.ad = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 62, i16 noundef zeroext %i.ac) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @pcie_cap_has_lnkctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word_unlocked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_pme_wakeup_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @pci_check_pme_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_evaluate_reg(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_find_child_device(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_remove_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_no_msi() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pcie_no_aspm() local_unnamed_addr #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !12}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"auto-init"}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = !{i64 18256}
!19 = !{i64 19875}
!20 = !{i64 2158245608}
!21 = !{i64 2158245643}
!22 = distinct !{!22, !12}
end_hunk_2
