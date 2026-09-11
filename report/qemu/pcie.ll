Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pcie?download=true
inline.NumInlined: 244
inline.NumDeleted: 51
begin_hunk_0_@pcie_cap_flr_init:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.val.i = load i32, ptr %i.g, align 1
  %i.h = or i32 %.val.i, 268435456
  store i32 %i.h, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i8, ptr %i.c, align 8
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.val.i4 = load i16, ptr %i.n, align 1
  %i.o = or i16 %.val.i4, -32768
  store i16 %i.o, ptr %i.n, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pcie_cap_flr_write_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.d = load i8, ptr %i.c, align 8
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.val = load i16, ptr %i.g, align 1
  %.not = icmp sgt i16 %.val, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @pci_device_reset(ptr noundef nonnull %0) #12
  %.val.i = load i16, ptr %i.g, align 1
  %i.h = and i16 %.val.i, 32767
  store i16 %i.h, ptr %i.g, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @pci_device_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pcie_cap_arifwd_init(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.b = load i8, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i8 %i.b to i64                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %.val.i = load i32, ptr %i.g, align 1
  %i.h = or i32 %.val.i, 32
  store i32 %i.h, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %.val.i4 = load i32, ptr %i.l, align 1
  %i.m = or i32 %.val.i4, 32
  store i32 %i.m, ptr %i.l, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @pcie_cap_arifwd_reset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.d = load i8, ptr %i.c, align 8
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.val.i = load i32, ptr %i.g, align 1
  %i.h = and i32 %.val.i, -33
  store i32 %i.h, ptr %i.g, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local zeroext i1 @pcie_cap_is_arifwd_enabled(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1340
  %.val7 = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val7, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  %.not6 = icmp eq i8 %i.d, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i8 %i.d to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val = load i32, ptr %i.i, align 1
  %i.j = and i32 %.val, 32
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.k, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext range(i16 0, 4089) i16 @pcie_find_capability(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 256
  %.val20.i = load i32, ptr %i.b, align 1
  %.not.i = icmp eq i32 %.val20.i, 0
  br i1 %.not.i, label %pcie_find_capability_list.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.f
  %.04.i = phi i16 [ %i.k, %bb.f ], [ 256, %bb.a ] ; 4 uses
  %i.c = icmp samesign ugt i16 %.04.i, 255
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1026, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_find_capability_list) #11
  unreachable

bb.c:                                             ; preds = %.preheader.i
  %i.d = icmp samesign ult i16 %.04.i, 4089
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1027, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_find_capability_list) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = zext nneg i16 %.04.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 %i.e
  %.val.i = load i32, ptr %i.f, align 1           ; 2 uses
  %i.g = trunc i32 %.val.i to i16
  %i.h = icmp eq i16 %1, %i.g
  br i1 %i.h, label %pcie_find_capability_list.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %.val.i, 20
  %i.j = trunc nuw nsw i32 %i.i to i16
  %i.k = and i16 %i.j, 4092                       ; 2 uses
  %.not18.i = icmp eq i16 %i.k, 0
  br i1 %.not18.i, label %pcie_find_capability_list.exit, label %.preheader.i, !llvm.loop !0

pcie_find_capability_list.exit:                   ; preds = %bb.e, %bb.f, %bb.a
  %.1.i = phi i16 [ 0, %bb.a ], [ 0, %bb.f ], [ %.04.i, %bb.e ]
  ret i16 %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @pcie_insert_capability(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1340
  %.val80 = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val80, 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1079, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_insert_capability) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i16 %3 to i32                       ; 3 uses
  %i.d = and i32 %i.c, 3
  %i.e = icmp ne i32 %i.d, 0
  %i.f = icmp ult i16 %4, 8
  %or.cond = or i1 %i.f, %i.e
  %i.g = add i16 %3, -4096
  %i.h = icmp ult i16 %i.g, -3840
  %or.cond8 = or i1 %i.h, %or.cond
  br i1 %or.cond8, label %.critedge78, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = zext i16 %4 to i32
  %i.j = add nuw nsw i32 %i.i, %i.c
  %i.k = icmp samesign ugt i32 %i.j, 4096
  br i1 %i.k, label %.critedge78, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256 ; 2 uses
  %.val79 = load i32, ptr %i.n, align 1           ; 4 uses
  %.not70 = icmp eq i32 %.val79, 0
  br i1 %.not70, label %bb.f, label %.lr.ph.preheader.preheader

.lr.ph.preheader.preheader:                       ; preds = %bb.e
  %5 = lshr i32 %.val79, 20                       ; 2 uses
  %6 = and i32 %5, 4092                           ; 2 uses
  %.not7597 = icmp eq i32 %6, 0
  br i1 %.not7597, label %pcie_ext_cap_set_next.exit, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not71 = icmp eq i16 %3, 256
  br i1 %.not71, label %bb.g, label %.critedge78

bb.g:                                             ; preds = %bb.f
  %i.o = zext i16 %1 to i32
  %i.p = zext i8 %2 to i32
  %i.q = shl nuw nsw i32 %i.p, 16
  %i.r = or disjoint i32 %i.q, %i.o
  store i32 %i.r, ptr %i.n, align 1
  br label %bb.i

.lr.ph.a:                                         ; preds = %bb.h
  %i.s = lshr i32 %.val, 20                       ; 2 uses
  %7 = and i32 %i.s, 4092                         ; 2 uses
  %.not75 = icmp eq i32 %7, 0
  br i1 %.not75, label %pcie_ext_cap_set_next.exit, label %bb.h, !llvm.loop !12

bb.h:                                             ; preds = %.lr.ph.preheader.preheader, %.lr.ph.a
  %8 = phi i32 [ %7, %.lr.ph.a ], [ %6, %.lr.ph.preheader.preheader ]
  %9 = phi i32 [ %i.s, %.lr.ph.a ], [ %5, %.lr.ph.preheader.preheader ]
  %.0618799 = phi i16 [ %11, %.lr.ph.a ], [ 256, %.lr.ph.preheader.preheader ]
  %.0588898 = phi i32 [ %.val, %.lr.ph.a ], [ %.val79, %.lr.ph.preheader.preheader ]
  %10 = trunc nuw nsw i32 %9 to i16
  %11 = and i16 %10, 4092                         ; 3 uses
  %i.t = zext nneg i32 %8 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %.val = load i32, ptr %i.u, align 1             ; 4 uses
  %i.v = icmp eq i32 %.val, 0
  %i.w = add nsw i16 %11, -1
  %i.x = icmp uge i16 %i.w, %3
  %or.cond76 = select i1 %i.v, i1 true, i1 %i.x
  br i1 %or.cond76, label %.pcie_ext_cap_set_next.exit_crit_edge, label %.lr.ph.a, !llvm.loop !12

.pcie_ext_cap_set_next.exit_crit_edge:            ; preds = %bb.h
  br label %pcie_ext_cap_set_next.exit, !llvm.loop !12

pcie_ext_cap_set_next.exit:                       ; preds = %.lr.ph.a, %.pcie_ext_cap_set_next.exit_crit_edge, %.lr.ph.preheader.preheader
  %.05888.lcssa = phi i32 [ %.val79, %.lr.ph.preheader.preheader ], [ %.0588898, %.pcie_ext_cap_set_next.exit_crit_edge ], [ %.val, %.lr.ph.a ]
  %.06187.lcssa = phi i16 [ 256, %.lr.ph.preheader.preheader ], [ %.0618799, %.pcie_ext_cap_set_next.exit_crit_edge ], [ %11, %.lr.ph.a ]
  %i.y = and i32 %.05888.lcssa, -4194304
  %i.z = zext nneg i16 %3 to i64                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z
  %i.ab = zext i16 %1 to i32
  %i.ac = zext i8 %2 to i32
  %i.ad = shl nuw nsw i32 %i.ac, 16
  %i.ae = or disjoint i32 %i.ad, %i.ab
  %i.af = or i32 %i.y, %i.ae
  store i32 %i.af, ptr %i.aa, align 1
  %.val81 = load ptr, ptr %i.l, align 8
  %i.ag = zext nneg i16 %.06187.lcssa to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.val81, i64 %i.ag ; 2 uses
  %.val.i = load i32, ptr %i.ah, align 1
  %i.ai = and i32 %.val.i, 4194303
  %i.aj = shl nuw i32 %i.c, 20
  %i.ak = or disjoint i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.ah, align 1
  br label %bb.i

bb.i:                                             ; preds = %pcie_ext_cap_set_next.exit, %bb.g
  %.pre-phi = phi i64 [ 256, %bb.g ], [ %i.z, %pcie_ext_cap_set_next.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pre-phi
  %i.ao = zext i16 %4 to i64                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.an, i8 noundef 0, i64 noundef range(i64 0, 65536) %i.ao, i1 noundef false) #12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aq = load ptr, ptr %i.ap, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ar, i8 noundef 0, i64 noundef range(i64 0, 65536) %i.ao, i1 noundef false) #12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.at = load ptr, ptr %i.as, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.au, i8 noundef -1, i64 noundef range(i64 0, 65536) %i.ao, i1 noundef false) #12
  br label %.critedge78

.critedge78:                                      ; preds = %bb.f, %bb.c, %bb.d, %bb.i
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pcie_add_capability(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i16 %3, 255
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 1134, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_add_capability) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = add i16 %4, %3                           ; 2 uses
  %i.c = icmp ult i16 %3, %i.b
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1135, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_add_capability) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = icmp ult i16 %i.b, 4097
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1136, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_add_capability) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = icmp ugt i16 %4, 7
  br i1 %i.e, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1137, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_add_capability) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.f = getelementptr i8, ptr %0, i64 1340
  %.val = load i32, ptr %i.f, align 4
  %i.g = and i32 %.val, 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1138, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_add_capability) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not25 = icmp eq i16 %3, 256
  br i1 %.not25, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.h = getelementptr i8, ptr %0, i64 168
  %.val26 = load ptr, ptr %i.h, align 8           ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val26, i64 256
  %.val20.i = load i32, ptr %i.i, align 1
  %.not.i = icmp eq i32 %.val20.i, 0
  br i1 %.not.i, label %pcie_find_capability_list.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %bb.p
  %.04.i = phi i16 [ %i.p, %bb.p ], [ 256, %bb.l ] ; 3 uses
  %i.j = icmp samesign ugt i16 %.04.i, 255
  br i1 %i.j, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1026, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_find_capability_list) #11
  unreachable

bb.n:                                             ; preds = %.preheader.i
  %i.k = icmp samesign ult i16 %.04.i, 4089
  br i1 %i.k, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1, i32 noundef 1027, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_find_capability_list) #11
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.l = zext nneg i16 %.04.i to i64              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.l
  %.val.i = load i32, ptr %i.m, align 1           ; 2 uses
  %i.n = lshr i32 %.val.i, 20
  %i.o = trunc nuw nsw i32 %i.n to i16
  %i.p = and i16 %i.o, 4092                       ; 2 uses
  %.not18.i = icmp eq i16 %i.p, 0
  br i1 %.not18.i, label %bb.q, label %.preheader.i, !llvm.loop !0

pcie_find_capability_list.exit:                   ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1148, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_add_capability) #11
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.q = zext i16 %3 to i32                       ; 2 uses
  %i.r = and i32 %i.q, 3
  %.not.i28 = icmp eq i32 %i.r, 0
  br i1 %.not.i28, label %pcie_ext_cap_set_next.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.1, i32 noundef 1050, ptr noundef nonnull @__PRETTY_FUNCTION__.pcie_ext_cap_set_next) #11
  unreachable

pcie_ext_cap_set_next.exit:                       ; preds = %bb.q
  %i.s = getelementptr inbounds nuw i8, ptr %.val26, i64 %i.l
  %i.t = and i32 %.val.i, 4194303
  %i.u = shl nuw i32 %i.q, 20
  %i.v = or disjoint i32 %i.t, %i.u
  store i32 %i.v, ptr %i.s, align 1
  br label %bb.s

bb.s:                                             ; preds = %pcie_ext_cap_set_next.exit, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = zext i16 %3 to i64                       ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = zext i16 %1 to i32
  %i.ab = zext i8 %2 to i32
  %i.ac = shl nuw nsw i32 %i.ab, 16
  %i.ad = or disjoint i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.z, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.y
  %i.ah = zext i16 %4 to i64                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ag, i8 noundef 0, i64 noundef range(i64 0, 65536) %i.ah, i1 noundef false) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aj = load ptr, ptr %i.ai, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ak, i8 noundef 0, i64 noundef range(i64 0, 65536) %i.ah, i1 noundef false) #12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.am = load ptr, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.an, i8 noundef -1, i64 noundef range(i64 0, 65536) %i.ah, i1 noundef false) #12
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @pcie_sync_bridge_lnk(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 55, ptr noundef nonnull @__func__.PCI_BRIDGE) #12
  %i.b = tail call ptr @pci_bridge_get_sec_bus(ptr noundef %i.a) #12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.h = load i8, ptr %i.g, align 8
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.val = load i16, ptr %i.k, align 1             ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2248 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8               ; 2 uses
  %.not38 = icmp eq i8 %i.m, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1296 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16
  %i.p = zext i8 %i.m to i32
  %i.q = add nuw nsw i32 %i.p, 18
  %i.r = tail call i32 %i.o(ptr noundef nonnull %i.d, i32 noundef %i.q, i32 noundef 2) #12 ; 3 uses
  %i.s = and i32 %i.r, 1008
  %i.t = zext i16 %.val to i32                    ; 2 uses
  %i.u = and i32 %i.t, 1008                       ; 2 uses
  %i.v = icmp samesign ugt i32 %i.s, %i.u
  %i.w = and i32 %i.r, 64527
  %i.x = or disjoint i32 %i.w, %i.u
  %.0.in = select i1 %i.v, i32 %i.x, i32 %i.r     ; 3 uses
  %i.y = and i32 %.0.in, 15
  %i.z = and i32 %i.t, 15                         ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.y, %i.z
  %i.ab = and i32 %.0.in, 65520
  %i.ac = or disjoint i32 %i.ab, %i.z
  %.1.in = select i1 %i.aa, i32 %i.ac, i32 %.0.in
  %.1 = trunc i32 %.1.in to i16
  %i.ad = load ptr, ptr %i.n, align 16
  %i.ae = load i8, ptr %i.l, align 8
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 50
  %i.ah = tail call i32 %i.ad(ptr noundef nonnull %i.d, i32 noundef %i.ag, i32 noundef 2) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 50 ; 2 uses
  %.val.i = load i16, ptr %i.ai, align 1
  %i.aj = and i16 %.val.i, -1025
  %i.ak = trunc i32 %i.ah to i16
  %i.al = and i16 %i.ak, 1024
  %i.am = or disjoint i16 %i.aj, %i.al
  store i16 %i.am, ptr %i.ai, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.2 = phi i16 [ %.1, %bb.c ], [ %.val, %bb.b ], [ %.val, %bb.a ] ; 3 uses
  %i.an = and i16 %.2, 1008
  %.not39 = icmp eq i16 %i.an, 0
  %i.ao = or i16 %.2, 16
  %spec.select44 = select i1 %.not39, i16 %i.ao, i16 %.2 ; 2 uses
end_hunk_0
