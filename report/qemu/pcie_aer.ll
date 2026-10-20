Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pcie_aer?download=true
inline.NumInlined: 113
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pcie_aer_root_write_config:bb.a

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %.2.i, %.val
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %i.p) #13
  br label %pcie_aer_root_notify.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.q = and i32 %.2.i, %4
  %.not16 = icmp ne i32 %i.q, 0
  %i.r = and i32 %.2.i, %.val
  %.not17 = icmp eq i32 %i.r, 0
  %or.cond = select i1 %.not16, i1 true, i1 %.not17
  br i1 %or.cond, label %pcie_aer_root_notify.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @msix_enabled(ptr noundef nonnull %0) #13
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val10.i = load ptr, ptr %i.a, align 8
  %.val11.i = load i16, ptr %i.c, align 2
  %i.t = zext i16 %.val11.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.val.i.i = load i32, ptr %i.v, align 1
  %i.w = lshr i32 %.val.i.i, 27
  tail call void @msix_notify(ptr noundef nonnull %0, i32 noundef %i.w) #13
  br label %pcie_aer_root_notify.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call zeroext i1 @msi_enabled(ptr noundef nonnull %0) #13
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val9.i = load i16, ptr %i.c, align 2
  %i.y = zext i16 %.val9.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.val.i13.i = load i32, ptr %i.aa, align 1
  %i.ab = lshr i32 %.val.i13.i, 27
  tail call void @msi_notify(ptr noundef nonnull %0, i32 noundef %i.ab) #13
  br label %pcie_aer_root_notify.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %.val.i, i64 61
  %.val12.val.i = load i8, ptr %i.ac, align 1
  %.not8.i = icmp eq i8 %.val12.val.i, 0
  br i1 %.not8.i, label %pcie_aer_root_notify.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 1) #13
  br label %pcie_aer_root_notify.exit

pcie_aer_root_notify.exit:                        ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e, %bb.c, %bb.d
  ret void
}

declare i32 @msix_enabled(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @msi_enabled(ptr noundef) local_unnamed_addr #1

declare void @pci_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @pcie_aer_state_log_num_valid(ptr nofree noundef readonly captures(none) %0, i32 %1) #7 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2
  %i.d = icmp ule i16 %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -22, 1) i32 @pcie_aer_parse_error_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #8 {
.critedge:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.25) #16
  %.not.not = icmp eq i32 %i.a, 0
  br i1 %.not.not, label %bb.a, label %.critedge.1

.critedge.1:                                      ; preds = %.critedge
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.26) #16
  %.not.not.1 = icmp eq i32 %i.b, 0
  br i1 %.not.not.1, label %bb.a, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.27) #16
  %.not.not.2 = icmp eq i32 %i.c, 0
  br i1 %.not.not.2, label %bb.a, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.28) #16
  %.not.not.3 = icmp eq i32 %i.d, 0
  br i1 %.not.not.3, label %bb.a, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.29) #16
  %.not.not.4 = icmp eq i32 %i.e, 0
  br i1 %.not.not.4, label %bb.a, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.30) #16
  %.not.not.5 = icmp eq i32 %i.f, 0
  br i1 %.not.not.5, label %bb.a, label %.critedge.6

.critedge.6:                                      ; preds = %.critedge.5
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.31) #16
  %.not.not.6 = icmp eq i32 %i.g, 0
  br i1 %.not.not.6, label %bb.a, label %.critedge.7

.critedge.7:                                      ; preds = %.critedge.6
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.32) #16
  %.not.not.7 = icmp eq i32 %i.h, 0
  br i1 %.not.not.7, label %bb.a, label %.critedge.8

.critedge.8:                                      ; preds = %.critedge.7
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.33) #16
  %.not.not.8 = icmp eq i32 %i.i, 0
  br i1 %.not.not.8, label %bb.a, label %.critedge.9

.critedge.9:                                      ; preds = %.critedge.8
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.34) #16
  %.not.not.9 = icmp eq i32 %i.j, 0
  br i1 %.not.not.9, label %bb.a, label %.critedge.10

.critedge.10:                                     ; preds = %.critedge.9
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.35) #16
  %.not.not.10 = icmp eq i32 %i.k, 0
  br i1 %.not.not.10, label %bb.a, label %.critedge.11

.critedge.11:                                     ; preds = %.critedge.10
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.36) #16
  %.not.not.11 = icmp eq i32 %i.l, 0
  br i1 %.not.not.11, label %bb.a, label %.critedge.12

.critedge.12:                                     ; preds = %.critedge.11
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.37) #16
  %.not.not.12 = icmp eq i32 %i.m, 0
  br i1 %.not.not.12, label %bb.a, label %.critedge.13

.critedge.13:                                     ; preds = %.critedge.12
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.38) #16
  %.not.not.13 = icmp eq i32 %i.n, 0
  br i1 %.not.not.13, label %bb.a, label %.critedge.14

.critedge.14:                                     ; preds = %.critedge.13
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.39) #16
  %.not.not.14 = icmp eq i32 %i.o, 0
  br i1 %.not.not.14, label %bb.a, label %.critedge.15

.critedge.15:                                     ; preds = %.critedge.14
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(16) @.str.40) #16
  %.not.not.15 = icmp eq i32 %i.p, 0
  br i1 %.not.not.15, label %bb.a, label %.critedge.16

.critedge.16:                                     ; preds = %.critedge.15
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.41) #16
  %.not.not.16 = icmp eq i32 %i.q, 0
  br i1 %.not.not.16, label %bb.a, label %.critedge.17

.critedge.17:                                     ; preds = %.critedge.16
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.42) #16
  %.not.not.17 = icmp eq i32 %i.r, 0
  br i1 %.not.not.17, label %bb.a, label %.critedge.18

.critedge.18:                                     ; preds = %.critedge.17
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.43) #16
  %.not.not.18 = icmp eq i32 %i.s, 0
  br i1 %.not.not.18, label %bb.a, label %.critedge.19

.critedge.19:                                     ; preds = %.critedge.18
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.44) #16
  %.not.not.19 = icmp eq i32 %i.t, 0
  br i1 %.not.not.19, label %bb.a, label %.critedge.20

.critedge.20:                                     ; preds = %.critedge.19
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.45) #16
  %.not.not.20 = icmp eq i32 %i.u, 0
  br i1 %.not.not.20, label %bb.a, label %.critedge.21

.critedge.21:                                     ; preds = %.critedge.20
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.46) #16
  %.not.not.21 = icmp eq i32 %i.v, 0
  br i1 %.not.not.21, label %bb.a, label %.critedge.22

.critedge.22:                                     ; preds = %.critedge.21
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.47) #16
  %.not.not.22 = icmp eq i32 %i.w, 0
  br i1 %.not.not.22, label %bb.a, label %.critedge.23

.critedge.23:                                     ; preds = %.critedge.22
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.48) #16
  %.not.not.23 = icmp eq i32 %i.x, 0
  br i1 %.not.not.23, label %bb.a, label %.loopexit

bb.a:                                             ; preds = %.critedge.23, %.critedge.22, %.critedge.21, %.critedge.20, %.critedge.19, %.critedge.18, %.critedge.17, %.critedge.16, %.critedge.15, %.critedge.14, %.critedge.13, %.critedge.12, %.critedge.11, %.critedge.10, %.critedge.9, %.critedge.8, %.critedge.7, %.critedge.6, %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %3 = phi i8 [ 0, %.critedge ], [ 0, %.critedge.1 ], [ 0, %.critedge.2 ], [ 0, %.critedge.3 ], [ 0, %.critedge.4 ], [ 0, %.critedge.5 ], [ 0, %.critedge.6 ], [ 0, %.critedge.7 ], [ 0, %.critedge.8 ], [ 0, %.critedge.9 ], [ 0, %.critedge.10 ], [ 0, %.critedge.11 ], [ 0, %.critedge.12 ], [ 0, %.critedge.13 ], [ 0, %.critedge.14 ], [ 0, %.critedge.15 ], [ 1, %.critedge.16 ], [ 1, %.critedge.17 ], [ 1, %.critedge.18 ], [ 1, %.critedge.19 ], [ 1, %.critedge.20 ], [ 1, %.critedge.21 ], [ 1, %.critedge.22 ], [ 1, %.critedge.23 ]
  %.lcssa = phi ptr [ @pcie_aer_error_list, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 16), %.critedge.1 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 32), %.critedge.2 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 48), %.critedge.3 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 64), %.critedge.4 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 80), %.critedge.5 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 96), %.critedge.6 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 112), %.critedge.7 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 128), %.critedge.8 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 144), %.critedge.9 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 160), %.critedge.10 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 176), %.critedge.11 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 192), %.critedge.12 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 208), %.critedge.13 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 224), %.critedge.14 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 240), %.critedge.15 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 256), %.critedge.16 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 272), %.critedge.17 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 288), %.critedge.18 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 304), %.critedge.19 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 320), %.critedge.20 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 336), %.critedge.21 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 352), %.critedge.22 ], [ getelementptr inbounds nuw (i8, ptr @pcie_aer_error_list, i64 368), %.critedge.23 ]
  %i.y = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.z = load i32, ptr %i.y, align 8
  store i32 %i.z, ptr %1, align 4
  store i8 %3, ptr %2, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.23, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -22, %.critedge.23 ]
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pcie_aer_update_log(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2250
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f ; 11 uses
  %i.h = load i32, ptr %1, align 4                ; 3 uses
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.h, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.val42 = load i32, ptr %i.j, align 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 428, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_aer_update_log) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.h)
  %.not37 = icmp samesign ult i32 %i.k, 2
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 429, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_aer_update_log) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = and i32 %.val42, -2080
  %i.m = and i32 %i.i, 31
  %i.n = or disjoint i32 %i.l, %i.m               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32                     ; 2 uses
  %i.r = and i32 %i.q, 4
  %.not38 = icmp eq i32 %i.r, 0
  br i1 %.not38, label %bb.f, label %.preheader43

.preheader43:                                     ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 4
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.s, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %i.w, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %i.ad, ptr %i.aa, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  store i32 %i.ah, ptr %i.ae, align 1
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ai = and i32 %i.q, 8
  %.not39 = icmp eq i32 %i.ai, 0
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str, i32 noundef 442, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_aer_update_log) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aj, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader43, %bb.h
  %i.ak = load i16, ptr %i.o, align 2
  %i.al = and i16 %i.ak, 8
  %.not40 = icmp eq i16 %i.al, 0
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = load i8, ptr %i.c, align 8
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %.val = load i32, ptr %i.aq, align 1
  %i.ar = and i32 %.val, 2097152
  %.not41 = icmp eq i32 %i.ar, 0
  br i1 %.not41, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call i32 @llvm.bswap.i32(i32 %i.au)
  store i32 %i.av, ptr %i.as, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  store i32 %i.az, ptr %i.aw, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %i.ba, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.be, align 1
  %i.bi = or disjoint i32 %i.n, 2048
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bj, i8 noundef 0, i64 noundef 16, i1 noundef false) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader
  %.033 = phi i32 [ %i.bi, %.preheader ], [ %i.n, %bb.j ]
  store i32 %.033, ptr %i.j, align 1
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

declare ptr @pci_bridge_get_device(ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_parent_bus(ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @msix_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @msi_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
end_hunk_0
