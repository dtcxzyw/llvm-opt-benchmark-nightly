Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/uncore_discovery?download=true
inline.NumInlined: 65
inline.NumDeleted: 33
begin_hunk_0
@.str.15 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@format_attr_edge = internal global { { ptr, i16, [6 x i8] }, %union.anon.43, %union.anon.44 } { { ptr, i16, [6 x i8] } { ptr @.str.15, i16 292, [6 x i8] zeroinitializer }, %union.anon.43 { ptr @__uncore_edge_show }, %union.anon.44 zeroinitializer }, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"config:18\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"inv\00", align 1
@format_attr_inv = internal global { { ptr, i16, [6 x i8] }, %union.anon.43, %union.anon.44 } { { ptr, i16, [6 x i8] } { ptr @.str.18, i16 292, [6 x i8] zeroinitializer }, %union.anon.43 { ptr @__uncore_inv_show }, %union.anon.44 zeroinitializer }, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"config:23\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@format_attr_thresh = internal global { { ptr, i16, [6 x i8] }, %union.anon.43, %union.anon.44 } { { ptr, i16, [6 x i8] } { ptr @.str.21, i16 292, [6 x i8] zeroinitializer }, %union.anon.43 { ptr @__uncore_thresh_show }, %union.anon.44 zeroinitializer }, align 8
@.str.23 = private unnamed_addr constant [14 x i8] c"config:24-31\0A\00", align 1
@generic_uncore_msr_ops = internal global %struct.intel_uncore_ops { ptr @intel_generic_uncore_msr_init_box, ptr null, ptr @intel_generic_uncore_msr_disable_box, ptr @intel_generic_uncore_msr_enable_box, ptr @intel_generic_uncore_msr_disable_event, ptr @intel_generic_uncore_msr_enable_event, ptr @uncore_msr_read_counter, ptr null, ptr null, ptr null }, align 8
@generic_uncore_pci_ops = internal global %struct.intel_uncore_ops { ptr @intel_generic_uncore_pci_init_box, ptr null, ptr @intel_generic_uncore_pci_disable_box, ptr @intel_generic_uncore_pci_enable_box, ptr @intel_generic_uncore_pci_disable_event, ptr @intel_generic_uncore_pci_enable_event, ptr @intel_generic_uncore_pci_read_counter, ptr null, ptr null, ptr null }, align 8
@generic_uncore_mmio_ops = internal global %struct.intel_uncore_ops { ptr @intel_generic_uncore_mmio_init_box, ptr @uncore_mmio_exit_box, ptr @intel_generic_uncore_mmio_disable_box, ptr @intel_generic_uncore_mmio_enable_box, ptr @intel_generic_uncore_mmio_disable_event, ptr @intel_generic_uncore_mmio_enable_event, ptr @uncore_mmio_read_counter, ptr null, ptr null, ptr null }, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_uncore_find_discovery_unit_id(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %intel_uncore_find_discovery_unit.exit.thread, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.a
  %.011.i27.i = load ptr, ptr %0, align 8         ; 2 uses
  %.not.i28.i = icmp eq ptr %.011.i27.i, null
  br i1 %.not.i28.i, label %intel_uncore_find_discovery_unit.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader26.i, %.lr.ph.i
  %.011.i30.i = phi ptr [ %.011.i.i, %.lr.ph.i ], [ %.011.i27.i, %.preheader26.i ] ; 3 uses
  %.0.i29.i = phi ptr [ %.2.i.i, %.lr.ph.i ], [ null, %.preheader26.i ]
  %i.a = getelementptr i8, ptr %.011.i30.i, i64 24
  %.011.i.val.i = load i32, ptr %i.a, align 8     ; 2 uses
  %.not25.i = icmp ugt i32 %2, %.011.i.val.i
  %.not14.i.not.i = icmp eq i32 %2, %.011.i.val.i
  %.112.in.i.v.i = select i1 %.not25.i, i64 8, i64 16
  %.112.in.i.i = getelementptr i8, ptr %.011.i30.i, i64 %.112.in.i.v.i
  %.2.i.i = select i1 %.not14.i.not.i, ptr %.011.i30.i, ptr %.0.i29.i ; 4 uses
  %.011.i.i = load ptr, ptr %.112.in.i.i, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.011.i.i, null
  br i1 %.not.i.i, label %rb_find_first.exit.i, label %.lr.ph.i, !llvm.loop !0

rb_find_first.exit.i:                             ; preds = %.lr.ph.i
  %.not20.i = icmp eq ptr %.2.i.i, null
  br i1 %.not20.i, label %intel_uncore_find_discovery_unit.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_find_first.exit.i
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %intel_uncore_find_discovery_unit.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.01731.i = phi ptr [ %i.h, %bb.d ], [ %.2.i.i, %bb.b ] ; 4 uses
  %i.c = getelementptr i8, ptr %.01731.i, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %.not22.i = icmp eq i32 %i.d, %2
  br i1 %.not22.i, label %bb.c, label %intel_uncore_find_discovery_unit.exit.thread

bb.c:                                             ; preds = %.preheader.i
  %i.e = getelementptr i8, ptr %.01731.i, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %intel_uncore_find_discovery_unit.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @rb_next(ptr noundef nonnull %.01731.i) #9 ; 2 uses
  %.not21.i = icmp eq ptr %i.h, null
  br i1 %.not21.i, label %intel_uncore_find_discovery_unit.exit.thread, label %.preheader.i, !llvm.loop !1

intel_uncore_find_discovery_unit.exit:            ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %.2.i.i, %bb.b ], [ %.01731.i, %bb.c ]
  %i.i = getelementptr i8, ptr %.0.i, i64 28
  %i.j = load i32, ptr %i.i, align 4
  br label %intel_uncore_find_discovery_unit.exit.thread

intel_uncore_find_discovery_unit.exit.thread:     ; preds = %bb.d, %.preheader.i, %.preheader26.i, %bb.a, %rb_find_first.exit.i, %intel_uncore_find_discovery_unit.exit
  %.0 = phi i32 [ %i.j, %intel_uncore_find_discovery_unit.exit ], [ -1, %rb_find_first.exit.i ], [ -1, %bb.a ], [ -1, %.preheader26.i ], [ -1, %.preheader.i ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @uncore_find_add_unit(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.d, %.preheader.i.i ], [ %.val, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.0.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not9.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i, label %.lr.ph.i, label %.preheader.i.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader.i.i, %bb.b
  %.092.i = phi ptr [ %i.h, %bb.b ], [ %.0.i.i, %.preheader.i.i ] ; 3 uses
  %i.e = getelementptr i8, ptr %.092.i, i64 28
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, %i.b
  br i1 %i.g, label %uncore_find_unit.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = tail call ptr @rb_next(ptr noundef nonnull %.092.i) #9 ; 2 uses
  %.not.i12 = icmp eq ptr %i.h, null
  br i1 %.not.i12, label %.loopexit, label %.lr.ph.i, !llvm.loop !3

uncore_find_unit.exit:                            ; preds = %.lr.ph.i
  %i.i = getelementptr i8, ptr %.092.i, i64 24
  %i.j = load i32, ptr %i.i, align 8
  br label %.sink.split

.loopexit:                                        ; preds = %bb.b, %bb.a
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.k = load i16, ptr %2, align 2                ; 2 uses
  %i.l = add i16 %i.k, 1
  store i16 %i.l, ptr %2, align 2
  %i.m = zext i16 %i.k to i32
  br label %.sink.split

.sink.split:                                      ; preds = %uncore_find_unit.exit, %bb.c
  %.sink = phi i32 [ %i.m, %bb.c ], [ %i.j, %uncore_find_unit.exit ]
  %i.n = getelementptr i8, ptr %0, i64 24
  store i32 %.sink, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %.loopexit
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i22 = icmp eq ptr %i.o, null
  br i1 %.not.i22, label %__rb_add.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %unit_less.exit.thread
  %i.s = phi ptr [ %i.o, %.lr.ph ], [ %i.ab, %unit_less.exit.thread ] ; 5 uses
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ult i32 %i.q, %i.u
  br i1 %i.v, label %unit_less.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ugt i32 %i.q, %i.u
  br i1 %i.w, label %unit_less.exit.thread, label %unit_less.exit

unit_less.exit:                                   ; preds = %bb.f
  %i.x = load i32, ptr %i.r, align 8
  %i.y = getelementptr i8, ptr %i.s, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp ult i32 %i.x, %i.z
  %cond.fr = freeze i1 %i.aa
  %spec.select.v = select i1 %cond.fr, i64 16, i64 8
  br label %unit_less.exit.thread

unit_less.exit.thread:                            ; preds = %bb.f, %bb.e, %unit_less.exit
  %spec.select.v.sink = phi i64 [ %spec.select.v, %unit_less.exit ], [ 16, %bb.e ], [ 8, %bb.f ] ; 2 uses
  %spec.select = getelementptr i8, ptr %i.s, i64 %spec.select.v.sink
  %i.ab = load ptr, ptr %spec.select, align 8     ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %__rb_add.exit.loopexit, label %bb.e, !llvm.loop !4

__rb_add.exit.loopexit:                           ; preds = %unit_less.exit.thread
  %spec.select.le = getelementptr i8, ptr %i.s, i64 %spec.select.v.sink
  %i.ac = ptrtoint ptr %i.s to i64
  br label %__rb_add.exit

__rb_add.exit:                                    ; preds = %__rb_add.exit.loopexit, %bb.d
  %.017.i.lcssa = phi ptr [ %1, %bb.d ], [ %spec.select.le, %__rb_add.exit.loopexit ]
  %.0.i.lcssa = phi i64 [ 0, %bb.d ], [ %i.ac, %__rb_add.exit.loopexit ]
  store i64 %.0.i.lcssa, ptr %0, align 8
  %i.ad = getelementptr i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %0, ptr %.017.i.lcssa, align 8
  tail call void @rb_insert_color(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @uncore_discovery(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.s
  %i.h = phi i1 [ true, %bb.a ], [ false, %bb.s ]
  %indvars.iv = phi i64 [ 0, %bb.a ], [ 1, %bb.s ]
  %.01017 = phi i8 [ 0, %bb.a ], [ %.2, %bb.s ]   ; 5 uses
  %i.i = getelementptr [24 x i8], ptr %i.g, i64 %indvars.iv ; 6 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @cpus_read_lock() #9
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %i.l = load i8, ptr %i.k, align 4, !range !24, !noundef !25
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.h, label %_kmalloc_array_noprof.exit.i

_kmalloc_array_noprof.exit.i:                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i8 0, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.n = load i32, ptr @__uncore_max_dies, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = add nsw i64 %i.o, 63
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 2305843009213693944
  %i.s = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -549755813888, 2305843009213693945) %i.r, i32 noundef 3520) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %uncore_discovery_msr.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_kmalloc_array_noprof.exit.i
  store i64 0, ptr %i.f, align 8, !annotation !16
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.preheader.i
  %i.t = phi i64 [ %i.ar, %bb.g ], [ 0, %.preheader.preheader.i ]
  %i.u = load i64, ptr @__cpu_online_mask, align 8
  %i.v = shl nsw i64 -1, %i.t
  %i.w = and i64 %i.u, %i.v                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %find_next_bit.exit.thread.i, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %.preheader.i
  %i.x = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.w) #12, !srcloc !26 ; 3 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 64
  br i1 %i.z, label %bb.d, label %find_next_bit.exit.thread.i

bb.d:                                             ; preds = %find_next_bit.exit.i
  %i.aa = and i64 %i.x, 63
  %i.ab = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = add i64 %i.ac, ptrtoint (ptr @cpu_info to i64)
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 252
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = call i8 asm " btsq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.s, i64 range(i64 -2147483648, 2147483648) %i.ah) #10, !srcloc !27 ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 2
  call void @llvm.assume(i1 %i.aj)
  %i.ak = trunc nuw i8 %i.ai to i1
  br i1 %i.ak, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.i, align 8
  %i.am = call i32 @rdmsrq_safe_on_cpu(i32 noundef %i.y, i32 noundef %i.al, ptr noundef nonnull %i.f) #9
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond4.i = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond4.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @__parse_discovery_table(ptr noundef readonly %i.i, i64 noundef %i.ao, i32 noundef %i.ag, ptr noundef nonnull %i.e) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aq = add nuw nsw i64 %i.x, 1
  %i.ar = and i64 %i.aq, 127                      ; 2 uses
  %i.as = icmp samesign ugt i64 %i.ar, 63
  br i1 %i.as, label %find_next_bit.exit.thread.i, label %.preheader.i, !prof !28, !llvm.loop !20

find_next_bit.exit.thread.i:                      ; preds = %bb.g, %find_next_bit.exit.i, %.preheader.i
  call void @kfree(ptr noundef nonnull %i.s) #9
  %i.at = load i8, ptr %i.e, align 1, !range !24, !noundef !25
  %1 = or i8 %i.at, %.01017
  br label %uncore_discovery_msr.exit

uncore_discovery_msr.exit:                        ; preds = %_kmalloc_array_noprof.exit.i, %find_next_bit.exit.thread.i
  %.0.i = phi i8 [ %1, %find_next_bit.exit.thread.i ], [ %.01017, %_kmalloc_array_noprof.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.r

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i8 0, ptr %i.d, align 1
  %i.au = load i32, ptr %i.i, align 8             ; 2 uses
  %i.av = call ptr @pci_get_device(i32 noundef 32902, i32 noundef %i.au, ptr noundef null) #9 ; 2 uses
  %.not31.i11 = icmp eq ptr %i.av, null
  br i1 %.not31.i11, label %._crit_edge.i, label %.preheader.i12

.loopexit.i:                                      ; preds = %.backedge.i, %.preheader.i12
  %i.aw = call ptr @pci_get_device(i32 noundef 32902, i32 noundef %i.au, ptr noundef nonnull %i.ax) #9 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, null
  br i1 %.not.i13, label %._crit_edge.i, label %.preheader.i12, !llvm.loop !21

.preheader.i12:                                   ; preds = %bb.h, %.loopexit.i
  %i.ax = phi ptr [ %i.aw, %.loopexit.i ], [ %i.av, %bb.h ] ; 10 uses
  %i.ay = call zeroext i16 @pci_find_next_ext_capability(ptr noundef nonnull %i.ax, i16 noundef zeroext 0, i32 noundef 35) #9 ; 2 uses
  %.not2330.i = icmp eq i16 %i.ay, 0
  br i1 %.not2330.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i12
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.ba = phi i16 [ %i.ay, %.lr.ph.i ], [ %i.ch, %.backedge.i ] ; 2 uses
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 8
  %i.bd = call i32 @pci_read_config_dword(ptr noundef nonnull %i.ax, i32 noundef %i.bc, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.be = load i32, ptr %i.c, align 4
  %i.bf = and i32 %i.be, 65535
  %.not24.i = icmp eq i32 %i.bf, 1
  br i1 %.not24.i, label %bb.j, label %.backedge.i

bb.j:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i32 %i.bb, 12
  %i.bh = call i32 @pci_read_config_dword(ptr noundef nonnull %i.ax, i32 noundef %i.bg, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.bi = load i32, ptr %i.c, align 4             ; 2 uses
  %.not25.i = icmp ult i32 %i.bi, 8
  br i1 %.not25.i, label %bb.k, label %uncore_discovery_pci.exit

bb.k:                                             ; preds = %bb.j
  %i.bj = shl nuw nsw i32 %i.bi, 2                ; 2 uses
  %i.bk = add nuw nsw i32 %i.bj, 16
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 200
  %.val.i.i = load ptr, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %.val.i.i, i64 4
  %.val.val.i.i = load i32, ptr %i.bn, align 4
  %i.bo = icmp slt i32 %.val.val.i.i, 0
  br i1 %i.bo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load i32, ptr @logical_die_id, align 4  ; 2 uses
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @logical_die_id, align 4
  br label %get_device_die_id.exit.i

bb.m:                                             ; preds = %bb.k
  %i.br = call i32 @uncore_device_to_die(ptr noundef nonnull %i.ax) #9
  br label %get_device_die_id.exit.i

get_device_die_id.exit.i:                         ; preds = %bb.m, %bb.l
  %.0.i.i14 = phi i32 [ %i.bp, %bb.l ], [ %i.br, %bb.m ] ; 3 uses
  %i.bs = icmp sgt i32 %.0.i.i14, -1
  %i.bt = load i32, ptr @__uncore_max_dies, align 4
  %.not26.i = icmp slt i32 %.0.i.i14, %i.bt
  %or.cond.i = select i1 %i.bs, i1 %.not26.i, i1 false
  br i1 %or.cond.i, label %bb.n, label %.backedge.i

bb.n:                                             ; preds = %get_device_die_id.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !annotation !16
  %i.bu = call i32 @pci_read_config_dword(ptr noundef nonnull %i.ax, i32 noundef range(i32 16, 45) %i.bk, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.bv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = and i64 %i.bw, 11
  %.not.i.i15 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i15, label %bb.o, label %parse_discovery_table.exit.i

bb.o:                                             ; preds = %bb.n
  %i.by = and i64 %i.bw, 4294967280               ; 2 uses
  %i.bz = and i32 %i.bv, 6
  %i.ca = icmp eq i32 %i.bz, 4
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !annotation !16
  %i.cb = add nuw nsw i32 %i.bj, 20
  %i.cc = call i32 @pci_read_config_dword(ptr noundef nonnull %i.ax, i32 noundef %i.cb, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.cd = load i32, ptr %i.b, align 4
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = or disjoint i64 %i.cf, %i.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i27.i = phi i64 [ %i.cg, %bb.p ], [ %i.by, %bb.o ]
  call fastcc void @__parse_discovery_table(ptr noundef readonly %i.i, i64 noundef %.0.i27.i, i32 noundef range(i32 0, -2147483648) %.0.i.i14, ptr noundef nonnull %i.d) #13
  br label %parse_discovery_table.exit.i

parse_discovery_table.exit.i:                     ; preds = %bb.q, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.backedge.i

.backedge.i:                                      ; preds = %parse_discovery_table.exit.i, %get_device_die_id.exit.i, %bb.i
  %i.ch = call zeroext i16 @pci_find_next_ext_capability(ptr noundef nonnull %i.ax, i16 noundef zeroext %i.ba, i32 noundef 35) #9 ; 2 uses
  %.not23.i = icmp eq i16 %i.ch, 0
  br i1 %.not23.i, label %.loopexit.i, label %bb.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.h
  %i.ci = load i8, ptr %i.d, align 1, !range !24, !noundef !25
  %2 = or i8 %i.ci, %.01017
  br label %uncore_discovery_pci.exit

uncore_discovery_pci.exit:                        ; preds = %bb.j, %._crit_edge.i
  %i.cj = phi ptr [ null, %._crit_edge.i ], [ %i.ax, %bb.j ]
  %i.ck = phi i8 [ %2, %._crit_edge.i ], [ %.01017, %bb.j ]
  call void @pci_dev_put(ptr noundef %i.cj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.r

bb.r:                                             ; preds = %uncore_discovery_pci.exit, %uncore_discovery_msr.exit
  %.1 = phi i8 [ %i.ck, %uncore_discovery_pci.exit ], [ %.0.i, %uncore_discovery_msr.exit ]
  call void @cpus_read_unlock() #9
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %.2 = phi i8 [ %.1, %bb.r ], [ %.01017, %bb.b ] ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.t, !llvm.loop !23

bb.t:                                             ; preds = %bb.s
  %i.cl = trunc nuw i8 %.2 to i1
  ret i1 %i.cl
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_uncore_clear_discovery_tables() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @rb_first_postorder(ptr noundef nonnull @discovery_tables) #9 ; 2 uses
  %.not2530 = icmp eq ptr %i.a, null
  br i1 %.not2530, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %._crit_edge
  %.031 = phi ptr [ %i.b, %._crit_edge ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = tail call ptr @rb_next_postorder(ptr noundef nonnull %.031) #9 ; 2 uses
  %i.c = getelementptr i8, ptr %.031, i64 32      ; 3 uses
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not2729 = icmp eq ptr %i.d, null
  br i1 %.not2729, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i.backedge
  %.0.i = phi ptr [ %.0.i.be, %.preheader.i.backedge ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.e = getelementptr i8, ptr %.0.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.f, null
  br i1 %.not9.i, label %rb_first.exit, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.preheader.i, %rb_first.exit
  %.0.i.be = phi ptr [ %i.f, %.preheader.i ], [ %i.g, %rb_first.exit ]
  br label %.preheader.i, !llvm.loop !29

rb_first.exit:                                    ; preds = %.preheader.i
  tail call void @rb_erase(ptr noundef nonnull %.0.i, ptr noundef %i.c) #9
  tail call void @kfree(ptr noundef nonnull %.0.i) #9
  %i.g = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %._crit_edge, label %.preheader.i.backedge

._crit_edge:                                      ; preds = %rb_first.exit, %.lr.ph
  tail call void @kfree(ptr noundef nonnull %.031) #9
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %.critedge, label %.lr.ph, !llvm.loop !30

.critedge:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_generic_uncore_msr_init_box(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i32, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 368
  %.val2 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = getelementptr i8, ptr %.val2, i64 352
  %.val2.val = load i32, ptr %i.b, align 8        ; 3 uses
  %i.c = getelementptr i8, ptr %.val2, i64 376
  %.val2.val3 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val2.val3, i64 208
  %.val2.val3.val = load ptr, ptr %i.d, align 8   ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.val3.val, null
  br i1 %.not.i.i, label %wrmsrq.exit, label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %bb.a
  %.011.i27.i.i = load ptr, ptr %.val2.val3.val, align 8 ; 2 uses
  %.not.i28.i.i = icmp eq ptr %.011.i27.i.i, null
  br i1 %.not.i28.i.i, label %wrmsrq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader26.i.i, %.lr.ph.i.i
  %.011.i30.i.i = phi ptr [ %.011.i.i.i, %.lr.ph.i.i ], [ %.011.i27.i.i, %.preheader26.i.i ] ; 3 uses
  %.0.i29.i.i = phi ptr [ %.2.i.i.i, %.lr.ph.i.i ], [ null, %.preheader26.i.i ]
  %i.e = getelementptr i8, ptr %.011.i30.i.i, i64 24
  %.011.i.val.i.i = load i32, ptr %i.e, align 8   ; 2 uses
  %.not25.i.i = icmp ugt i32 %.val2.val, %.011.i.val.i.i
  %.not14.i.not.i.i = icmp eq i32 %.val2.val, %.011.i.val.i.i
  %.112.in.i.v.i.i = select i1 %.not25.i.i, i64 8, i64 16
  %.112.in.i.i.i = getelementptr i8, ptr %.011.i30.i.i, i64 %.112.in.i.v.i.i
  %.2.i.i.i = select i1 %.not14.i.not.i.i, ptr %.011.i30.i.i, ptr %.0.i29.i.i ; 4 uses
  %.011.i.i.i = load ptr, ptr %.112.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.011.i.i.i, null
  br i1 %.not.i.i.i, label %rb_find_first.exit.i.i, label %.lr.ph.i.i, !llvm.loop !0

rb_find_first.exit.i.i:                           ; preds = %.lr.ph.i.i
  %.not20.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not20.i.i, label %wrmsrq.exit, label %bb.b

bb.b:                                             ; preds = %rb_find_first.exit.i.i
  %i.f = icmp slt i32 %.val, 0
  br i1 %i.f, label %intel_generic_uncore_box_ctl.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %bb.d
  %.01731.i.i = phi ptr [ %i.l, %bb.d ], [ %.2.i.i.i, %bb.b ] ; 4 uses
  %i.g = getelementptr i8, ptr %.01731.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %.not22.i.i = icmp eq i32 %i.h, %.val2.val
  br i1 %.not22.i.i, label %bb.c, label %wrmsrq.exit

bb.c:                                             ; preds = %.preheader.i.i
  %i.i = getelementptr i8, ptr %.01731.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, %.val
  br i1 %i.k, label %intel_generic_uncore_box_ctl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @rb_next(ptr noundef nonnull %.01731.i.i) #9 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.l, null
  br i1 %.not21.i.i, label %wrmsrq.exit, label %.preheader.i.i, !llvm.loop !1

intel_generic_uncore_box_ctl.exit:                ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %.2.i.i.i, %bb.b ], [ %.01731.i.i, %bb.c ]
  %i.m = getelementptr i8, ptr %.0.i.i, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %wrmsrq.exit, label %bb.e

bb.e:                                             ; preds = %intel_generic_uncore_box_ctl.exit
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  tail call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.o, i32 768, i32 0) #10, !srcloc !17
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_write_msr, i64 8), i1 false) #10
          to label %wrmsrq.exit [label %bb.f], !srcloc !18

bb.f:                                             ; preds = %bb.e
  tail call void @do_trace_write_msr(i32 noundef %i.o, i64 noundef 768, i32 noundef 0) #9
  br label %wrmsrq.exit

wrmsrq.exit:                                      ; preds = %bb.d, %.preheader.i.i, %.preheader26.i.i, %bb.a, %rb_find_first.exit.i.i, %bb.f, %bb.e, %intel_generic_uncore_box_ctl.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_generic_uncore_msr_disable_box(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %.val = load i32, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr i8, ptr %0, i64 368
  %.val2 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.b = getelementptr i8, ptr %.val2, i64 352
  %.val2.val = load i32, ptr %i.b, align 8        ; 3 uses
  %i.c = getelementptr i8, ptr %.val2, i64 376
  %.val2.val3 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val2.val3, i64 208
  %.val2.val3.val = load ptr, ptr %i.d, align 8   ; 2 uses
  %.not.i.i = icmp eq ptr %.val2.val3.val, null
  br i1 %.not.i.i, label %wrmsrq.exit, label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %bb.a
  %.011.i27.i.i = load ptr, ptr %.val2.val3.val, align 8 ; 2 uses
  %.not.i28.i.i = icmp eq ptr %.011.i27.i.i, null
  br i1 %.not.i28.i.i, label %wrmsrq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader26.i.i, %.lr.ph.i.i
  %.011.i30.i.i = phi ptr [ %.011.i.i.i, %.lr.ph.i.i ], [ %.011.i27.i.i, %.preheader26.i.i ] ; 3 uses
  %.0.i29.i.i = phi ptr [ %.2.i.i.i, %.lr.ph.i.i ], [ null, %.preheader26.i.i ]
  %i.e = getelementptr i8, ptr %.011.i30.i.i, i64 24
  %.011.i.val.i.i = load i32, ptr %i.e, align 8   ; 2 uses
  %.not25.i.i = icmp ugt i32 %.val2.val, %.011.i.val.i.i
  %.not14.i.not.i.i = icmp eq i32 %.val2.val, %.011.i.val.i.i
  %.112.in.i.v.i.i = select i1 %.not25.i.i, i64 8, i64 16
  %.112.in.i.i.i = getelementptr i8, ptr %.011.i30.i.i, i64 %.112.in.i.v.i.i
  %.2.i.i.i = select i1 %.not14.i.not.i.i, ptr %.011.i30.i.i, ptr %.0.i29.i.i ; 4 uses
  %.011.i.i.i = load ptr, ptr %.112.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.011.i.i.i, null
  br i1 %.not.i.i.i, label %rb_find_first.exit.i.i, label %.lr.ph.i.i, !llvm.loop !0

rb_find_first.exit.i.i:                           ; preds = %.lr.ph.i.i
  %.not20.i.i = icmp eq ptr %.2.i.i.i, null
  br i1 %.not20.i.i, label %wrmsrq.exit, label %bb.b

bb.b:                                             ; preds = %rb_find_first.exit.i.i
  %i.f = icmp slt i32 %.val, 0
  br i1 %i.f, label %intel_generic_uncore_box_ctl.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %bb.d
  %.01731.i.i = phi ptr [ %i.l, %bb.d ], [ %.2.i.i.i, %bb.b ] ; 4 uses
  %i.g = getelementptr i8, ptr %.01731.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %.not22.i.i = icmp eq i32 %i.h, %.val2.val
  br i1 %.not22.i.i, label %bb.c, label %wrmsrq.exit

bb.c:                                             ; preds = %.preheader.i.i
  %i.i = getelementptr i8, ptr %.01731.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 8
end_hunk_0
