inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@rb_vm_call_cfunc:bb.a
  %.not.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.h, !prof !72

bb.h:                                             ; preds = %vm_push_frame.exit
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.au = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_push_frame.exit, %bb.h
  %i.av = getelementptr i8, ptr %i.an, i64 56
  store ptr %i.av, ptr %i.d, align 8, !tbaa !70
  ret i64 %i.am
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_call_cfunc_in_box(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = tail call ptr @rb_iseq_new(i64 noundef 4, i64 noundef %4, i64 noundef %4, i64 noundef 4, ptr noundef null, i32 noundef 0) #23
  %i.g = ptrtoint ptr %5 to i64
  %i.h = or i64 %i.g, 1
  %i.i = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.j = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef 4, i64 noundef 40, i1 noundef zeroext true) #23 ; 3 uses
  %i.k = inttoptr i64 %i.j to ptr                 ; 7 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  store i64 %i.i, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr i8, ptr %i.k, i64 24
  store ptr null, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr i8, ptr %i.k, i64 32
  store i8 2, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48 ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr i8, ptr %.val.i, i64 240
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %vm_cref_new_toplevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %i.j, 2
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.k, i64 8
  %.val28.i.i.i = load i64, ptr %i.s, align 8, !tbaa !26 ; 2 uses
  %i.t = icmp eq i64 %.val28.i.i.i, 4
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.k, align 8, !tbaa !24
  %i.v = or i64 %i.u, 262144
  store i64 %i.v, ptr %i.k, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.not26.i.i.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.b ]
  %.0.i.i.i = phi i64 [ 4, %bb.c ], [ %.val28.i.i.i, %bb.d ], [ 4, %bb.b ]
  %i.w = tail call i64 @rb_imemo_new(i32 noundef 1, i64 noundef %.0.i.i.i, i64 noundef 40, i1 noundef zeroext true) #23 ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 5 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  store i64 %i.q, ptr %i.y, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %i.x, i64 24
  store ptr %i.k, ptr %i.z, align 8, !tbaa !20
  %i.aa = getelementptr i8, ptr %i.x, i64 32
  store i8 2, ptr %i.aa, align 8, !tbaa !27
  br i1 %.not26.i.i.i, label %vm_cref_new_toplevel.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !24
  %i.ac = or i64 %i.ab, 262144
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !24
  br label %vm_cref_new_toplevel.exit

vm_cref_new_toplevel.exit:                        ; preds = %bb.a, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.j, %bb.a ], [ %i.w, %bb.e ], [ %i.w, %bb.f ]
  %i.ad = getelementptr i8, ptr %i.e, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 5 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !70  ; 6 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -56    ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 56
  %.not.i13 = icmp ugt ptr %i.ag, %i.ah
  br i1 %.not.i13, label %vm_push_frame.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %vm_cref_new_toplevel.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %vm_cref_new_toplevel.exit
  %i.ai = getelementptr i8, ptr %i.ae, i64 8
  store i64 %.0.i, ptr %i.ae, align 8, !tbaa !11
  %i.aj = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  store i64 %i.h, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr i8, ptr %i.ae, i64 24
  store i64 1145307171, ptr %i.aj, align 8, !tbaa !11
  store ptr null, ptr %i.ag, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -48
  store ptr %i.ak, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -32
  store i64 %0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -24
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.af, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ag, ptr %i.d, align 8, !tbaa !70
  %i.al = tail call i64 %1(i64 noundef %2, i64 noundef %3) #23
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.an = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 32
  %i.ao = load atomic volatile i32, ptr %i.an monotonic, align 8
  %i.ap = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !71
  %i.ar = xor i32 %i.aq, -1
  %i.as = and i32 %i.ao, %i.ar
  %.not.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.h, !prof !72

bb.h:                                             ; preds = %vm_push_frame.exit
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.at = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_push_frame.exit, %bb.h
  %i.au = getelementptr i8, ptr %i.am, i64 56
  store ptr %i.au, ptr %i.d, align 8, !tbaa !70
  ret i64 %i.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_vm_frame_flag_set_box_require(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #37 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = or i64 %i.e, 4096
  store i64 %i.f, ptr %i.d, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_current_box(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %.val = load ptr, ptr %0, align 8, !tbaa !121
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.c, align 8, !tbaa !122
  %i.d = tail call fastcc ptr @current_box_on_cfp(ptr %.val, i64 %.val2, ptr noundef %i.b)
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @current_box_on_cfp(ptr nofree readnone captures(address) %.0.val, i64 %.8.val, ptr nofree noundef readonly captures(address) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = getelementptr [8 x i8], ptr %.0.val, i64 %.8.val
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !11 ; 4 uses
  %i.d = and i64 %.val.i, 2147418113
  switch i64 %i.d, label %.preheader.i [
    i64 1717960705, label %bb.b
    i64 1431633921, label %.preheader3.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %.val.i, 2
  %.not5.i.i = icmp eq i64 %i.e, 0
  br i1 %.not5.i.i, label %.lr.ph.i.i, label %VM_EP_RUBY_LEP.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.b, %bb.b ]
  %i.f = getelementptr i8, ptr %.06.i.i, i64 -8
  %.0.val3.i.i = load i64, ptr %i.f, align 8, !tbaa !11
  %i.g = and i64 %.0.val3.i.i, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %.0.val.i.i = load i64, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %i.i = and i64 %.0.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %VM_EP_RUBY_LEP.exit, !llvm.loop !13

.preheader.i:                                     ; preds = %.preheader3.i, %bb.a
  %.018.i.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.preheader3.i ] ; 2 uses
  %.018.val.i.lcssa = phi i64 [ %.val.i, %bb.a ], [ %.018.val.i, %.preheader3.i ] ; 2 uses
  %i.j = and i64 %.018.val.i.lcssa, 2
  %.not227.i = icmp eq i64 %i.j, 0
  br i1 %.not227.i, label %.lr.ph.i, label %VM_EP_RUBY_LEP.exit

.preheader3.i:                                    ; preds = %bb.a, %.preheader3.i
  %.0.i9 = phi ptr [ %i.k, %.preheader3.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %.0.i9, i64 56     ; 3 uses
  %.not24.i = icmp ult ptr %i.k, %i.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  tail call void @llvm.assume(i1 %.not24.i)
  %i.l = getelementptr i8, ptr %.0.i9, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15, !nonnull !64, !noundef !64 ; 2 uses
  %.018.val.i = load i64, ptr %i.m, align 8, !tbaa !11 ; 2 uses
  %i.n = and i64 %.018.val.i, 2147418113
  %.not1.i = icmp eq i64 %i.n, 1431633921
  br i1 %.not1.i, label %.preheader3.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.18.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.018.i.lcssa, %.preheader.i ]
  %i.o = getelementptr i8, ptr %.18.i, i64 -8
  %.1.val26.i = load i64, ptr %i.o, align 8, !tbaa !11
  %i.p = and i64 %.1.val26.i, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %.1.val.i = load i64, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %i.r = and i64 %.1.val.i, 2
  %.not22.i = icmp eq i64 %i.r, 0
  br i1 %.not22.i, label %.lr.ph.i, label %VM_EP_RUBY_LEP.exit, !llvm.loop !590

VM_EP_RUBY_LEP.exit:                              ; preds = %.lr.ph.i.i, %.lr.ph.i, %bb.b, %.preheader.i
  %.val23 = phi i64 [ %.1.val.i, %.lr.ph.i ], [ %.val.i, %bb.b ], [ %.018.val.i.lcssa, %.preheader.i ], [ %.0.val.i.i, %.lr.ph.i.i ] ; 2 uses
  %.017.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.b, %bb.b ], [ %.018.i.lcssa, %.preheader.i ], [ %i.h, %.lr.ph.i.i ] ; 2 uses
  %i.s = and i64 %.val23, 2147418113
  switch i64 %i.s, label %bb.h [
    i64 286326785, label %bb.c
    i64 1431633921, label %bb.c
    i64 1145307137, label %bb.e
    i64 858980353, label %bb.e
    i64 2040070145, label %bb.f
  ]

bb.c:                                             ; preds = %VM_EP_RUBY_LEP.exit, %VM_EP_RUBY_LEP.exit
  %i.t = getelementptr i8, ptr %.017.i, i64 -16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 2 uses
  %i.v = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %i.v)
  %i.w = inttoptr i64 %i.u to ptr                 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !77
  %i.y = and i64 %i.x, 61440
  %i.z = icmp eq i64 %i.y, 24576
  br i1 %i.z, label %check_method_entry.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80 ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = inttoptr i64 %i.ab to ptr
  br label %check_method_entry.exit

check_method_entry.exit:                          ; preds = %bb.c, %bb.d
  %.0.i27 = phi ptr [ %i.ad, %bb.d ], [ %i.w, %bb.c ]
  %i.ae = getelementptr i8, ptr %.0.i27, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !83
  %i.ag = getelementptr i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !207
  br label %bb.i

bb.e:                                             ; preds = %VM_EP_RUBY_LEP.exit, %VM_EP_RUBY_LEP.exit
  %i.ai = getelementptr i8, ptr %.017.i, i64 -8
  %.val26 = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.aj = and i64 %.val26, -4
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %bb.i

bb.f:                                             ; preds = %VM_EP_RUBY_LEP.exit
  %i.al = tail call ptr @rb_main_box() #23        ; 2 uses
  %.not19 = icmp eq ptr %i.al, null
  br i1 %.not19, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.am = tail call ptr @rb_root_box() #23
  br label %bb.i

bb.h:                                             ; preds = %VM_EP_RUBY_LEP.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.271, i64 noundef %.val23) #57
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.e, %check_method_entry.exit
  %.0 = phi ptr [ %i.ah, %check_method_entry.exit ], [ %i.ak, %bb.e ], [ %i.am, %bb.g ], [ %i.al, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_vm_loading_box(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr @ruby_box_enabled, align 1, !tbaa !269, !range !114, !noundef !64
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_root_box() #23
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  %.val23 = load ptr, ptr %0, align 8, !tbaa !121 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %.val24 = load i64, ptr %i.g, align 8, !tbaa !122 ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %.val23, i64 %.val24 ; 3 uses
  %i.i = icmp ugt ptr %i.h, %i.f
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.02031 = phi ptr [ %i.af, %bb.j ], [ %i.f, %bb.c ] ; 4 uses
  %i.j = getelementptr i8, ptr %.02031, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  %.val = load i64, ptr %i.k, align 8, !tbaa !11
  %i.l = and i64 %.val, 4096
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.02031, i64 24    ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = and i64 %i.n, -5
  %.not29 = icmp eq i64 %i.o, 0
  br i1 %.not29, label %.lr.ph.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i64 @rb_obj_class(i64 noundef %i.n) #23
  %i.q = load i64, ptr @rb_cBox, align 8, !tbaa !11
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.e
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.m, align 8, !tbaa !74
  %i.t = tail call ptr @rb_get_box_t(i64 noundef %i.s) #23
  br label %bb.k

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.014.i = phi ptr [ %i.ac, %bb.i ], [ %.02031, %.lr.ph.i.preheader ] ; 7 uses
  %i.u = getelementptr i8, ptr %.014.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !11
  %i.w = and i64 %.val.i, 2147418113
  %.not.i = icmp eq i64 %i.w, 1431633921
  br i1 %.not.i, label %bb.g, label %find_loader_control_frame.exit

bb.g:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %0, align 8, !tbaa !121
  %.val13.i = load i64, ptr %i.g, align 8, !tbaa !122
  %i.x = tail call fastcc ptr @current_box_on_cfp(ptr %.val12.i, i64 %.val13.i, ptr noundef nonnull %.014.i)
  %.not9.i = icmp eq ptr %i.x, null
  br i1 %.not9.i, label %find_loader_control_frame.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val10.i = load ptr, ptr %0, align 8, !tbaa !121
  %.val11.i = load i64, ptr %i.g, align 8, !tbaa !122
  %i.y = tail call fastcc ptr @current_box_on_cfp(ptr %.val10.i, i64 %.val11.i, ptr noundef nonnull %.014.i)
  %i.z = getelementptr i8, ptr %i.y, i64 128
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %find_loader_control_frame.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %.014.i, i64 56   ; 3 uses
  %i.ad = icmp ugt ptr %i.h, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %find_loader_control_frame.exit, !llvm.loop !591

find_loader_control_frame.exit:                   ; preds = %.lr.ph.i, %bb.g, %bb.h, %bb.i
  %.0.lcssa.i = phi ptr [ %i.ac, %bb.i ], [ %.014.i, %bb.g ], [ %.014.i, %bb.h ], [ %.014.i, %.lr.ph.i ]
  %.val27 = load ptr, ptr %0, align 8, !tbaa !121
  %.val28 = load i64, ptr %i.g, align 8, !tbaa !122
  %i.ae = tail call fastcc ptr @current_box_on_cfp(ptr %.val27, i64 %.val28, ptr noundef %.0.lcssa.i)
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.af = getelementptr i8, ptr %.02031, i64 56   ; 2 uses
  %i.ag = icmp ugt ptr %i.h, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !592

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.ah = tail call fastcc ptr @current_box_on_cfp(ptr %.val23, i64 %.val24, ptr noundef %i.f)
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %find_loader_control_frame.exit, %bb.f, %bb.b
  %.0 = phi ptr [ %i.t, %bb.f ], [ %i.ae, %find_loader_control_frame.exit ], [ %i.ah, %._crit_edge ], [ %i.d, %bb.b ]
  ret ptr %.0
}

declare ptr @rb_root_box() local_unnamed_addr #4

declare ptr @rb_get_box_t(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_update_references(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !tbaa !593
  %i.b = tail call i64 @rb_gc_location(i64 noundef %i.a) #23
end_hunk_0
begin_hunk_1_@args_setup_kw_parameters:bb.a

bb.g:                                             ; preds = %bb.f, %bb.d
  %.187 = phi i32 [ %i.w, %bb.d ], [ %.086126, %bb.f ] ; 2 uses
  %.2 = phi i64 [ %.0128, %bb.d ], [ %.1, %bb.f ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !733

._crit_edge:                                      ; preds = %bb.g
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.082.lcssa164 = phi i32 [ %i.h, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.086.lcssa163 = phi i32 [ %.187, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.aa = icmp slt i32 %.082.lcssa164, %i.i
  br i1 %i.aa, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %.preheader
  %i.ab = icmp sgt i32 %4, 0
  %wide.trip.count.i105 = zext nneg i32 %4 to i64
  %i.ac = zext nneg i32 %.082.lcssa164 to i64
  %i.ad = sub nsw i32 %i.i, %.082.lcssa164
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.154, i64 noundef %.2) #58
  unreachable

bb.i:                                             ; preds = %.lr.ph137, %bb.t
  %indvars.iv149 = phi i64 [ %i.ac, %.lr.ph137 ], [ %indvars.iv.next150, %bb.t ] ; 4 uses
  %.085135 = phi i32 [ 0, %.lr.ph137 ], [ %i.bg, %bb.t ] ; 3 uses
  %.288134 = phi i32 [ %.086.lcssa163, %.lr.ph137 ], [ %.3, %bb.t ] ; 4 uses
  %.089133 = phi i64 [ 4, %.lr.ph137 ], [ %.291, %bb.t ] ; 5 uses
  %.093132 = phi i32 [ 0, %.lr.ph137 ], [ %.194, %bb.t ] ; 5 uses
  %i.ae = getelementptr [8 x i8], ptr %6, i64 %indvars.iv149 ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv149
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.ag) #23
  br i1 %i.ab, label %.lr.ph.i106, label %.loopexit122

bb.j:                                             ; preds = %.lr.ph.i106
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i105
  br i1 %exitcond.not.i109, label %.loopexit122, label %.lr.ph.i106, !llvm.loop !732

.lr.ph.i106:                                      ; preds = %bb.i, %bb.j
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i107
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph.i106
  %i.al = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i107 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !11
  store i64 36, ptr %i.al, align 8, !tbaa !11
  %i.an = add i32 %.288134, 1
  br label %bb.t

.loopexit122:                                     ; preds = %bb.j, %bb.i
  %i.ao = sext i32 %.085135 to i64                ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.k, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 36
  br i1 %i.ar, label %bb.l, label %bb.s

bb.l:                                             ; preds = %.loopexit122
  store i64 4, ptr %i.ae, align 8, !tbaa !11
  %i.as = icmp samesign ult i64 %indvars.iv149, 31
  br i1 %i.as, label %bb.m, label %bb.n, !prof !72

bb.m:                                             ; preds = %bb.l
  %i.at = shl nuw i32 1, %.085135
  %i.au = or i32 %i.at, %.093132
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.av = icmp eq i64 %.089133, 4
  br i1 %i.av, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.aw = tail call i64 @rb_hash_new() #23        ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.r
  %indvars.iv145 = phi i64 [ 0, %bb.o ], [ %indvars.iv.next146, %bb.r ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv145 to i32
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = and i32 %i.ay, %.093132
  %.not100 = icmp eq i32 %i.az, 0
  br i1 %.not100, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = shl nuw nsw i64 %indvars.iv145, 1
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = tail call i64 @rb_hash_aset(i64 noundef %i.aw, i64 noundef %i.bb, i64 noundef 20) #23 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, 31
  br i1 %exitcond148.not, label %.loopexit, label %bb.p, !llvm.loop !734

.loopexit:                                        ; preds = %bb.r, %bb.n
  %.190 = phi i64 [ %.089133, %bb.n ], [ %i.aw, %bb.r ] ; 2 uses
  %i.bd = shl nsw i64 %i.ao, 1
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = tail call i64 @rb_hash_aset(i64 noundef %.190, i64 noundef %i.be, i64 noundef 20) #23 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %.loopexit122
  store i64 %i.aq, ptr %i.ae, align 8, !tbaa !11
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.m, %.loopexit, %bb.s
  %.194 = phi i32 [ %.093132, %bb.k ], [ %i.au, %bb.m ], [ %.093132, %.loopexit ], [ %.093132, %bb.s ] ; 2 uses
  %.291 = phi i64 [ %.089133, %bb.k ], [ %.089133, %bb.m ], [ %.190, %.loopexit ], [ %.089133, %bb.s ] ; 2 uses
  %.3 = phi i32 [ %i.an, %bb.k ], [ %.288134, %bb.m ], [ %.288134, %.loopexit ], [ %.288134, %bb.s ] ; 2 uses
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %i.bg = add i32 %.085135, 1                     ; 2 uses
  %exitcond152.not = icmp eq i32 %i.bg, %i.ad
  br i1 %exitcond152.not, label %._crit_edge138.loopexit, label %bb.i, !llvm.loop !735

._crit_edge138.loopexit:                          ; preds = %bb.t
  %i.bh = sext i32 %.194 to i64
  %i.bi = shl nsw i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %.preheader
  %.093.lcssa = phi i64 [ 1, %.preheader ], [ %i.bj, %._crit_edge138.loopexit ]
  %.089.lcssa = phi i64 [ 4, %.preheader ], [ %.291, %._crit_edge138.loopexit ] ; 2 uses
  %.288.lcssa = phi i32 [ %.086.lcssa163, %.preheader ], [ %.3, %._crit_edge138.loopexit ]
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = and i16 %i.bm, 32
  %.not97 = icmp eq i16 %i.bn, 0
  br i1 %.not97, label %bb.x, label %bb.u

bb.u:                                             ; preds = %._crit_edge138
  %i.bo = add i32 %i.i, 1
  %i.bp = sext i32 %4 to i64
  %i.bq = tail call i64 @rb_hash_new_with_size(i64 noundef %i.bp) #23 ; 2 uses
  %i.br = icmp sgt i32 %4, 0
  br i1 %i.br, label %.lr.ph.preheader.i112, label %make_rest_kw_hash.exit

.lr.ph.preheader.i112:                            ; preds = %bb.u
  %wide.trip.count.i113 = zext nneg i32 %4 to i64
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %bb.w, %.lr.ph.preheader.i112
  %indvars.iv.i115 = phi i64 [ 0, %.lr.ph.preheader.i112 ], [ %indvars.iv.next.i116, %bb.w ] ; 3 uses
  %i.bs = getelementptr [8 x i8], ptr %3, i64 %indvars.iv.i115
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 36
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i114
  %i.bv = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i115
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11
  %i.bx = tail call i64 @rb_hash_aset(i64 noundef %i.bq, i64 noundef %i.bw, i64 noundef %i.bt) #23 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i114
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i113
  br i1 %exitcond.not.i117, label %make_rest_kw_hash.exit, label %.lr.ph.i114, !llvm.loop !736

make_rest_kw_hash.exit:                           ; preds = %bb.w, %bb.u
  %i.by = sext i32 %i.bo to i64
  %i.bz = getelementptr [8 x i8], ptr %6, i64 %i.by
  store i64 %i.bq, ptr %i.bz, align 8, !tbaa !11
  br label %bb.z

bb.x:                                             ; preds = %._crit_edge138
  %.not98 = icmp eq i32 %.288.lcssa, %4
  br i1 %.not98, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = tail call fastcc i64 @make_unknown_kw_hash(ptr noundef %5, i32 noundef %4, ptr noundef %3)
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.155, i64 noundef %i.ca) #58
  unreachable

bb.z:                                             ; preds = %bb.x, %make_rest_kw_hash.exit
  %i.cb = icmp eq i64 %.089.lcssa, 4
  %.392 = select i1 %i.cb, i64 %.093.lcssa, i64 %.089.lcssa
  %i.cc = sext i32 %i.i to i64
  %i.cd = getelementptr [8 x i8], ptr %6, i64 %i.cc
  store i64 %.392, ptr %i.cd, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_kwparm_kwarg(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
vm_ci_kwarg.exit:
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 2 uses
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %.val33 = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %i.f = getelementptr i8, ptr %.val33, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !27 ; 2 uses
  %i.i = getelementptr i8, ptr %.val35, i64 16    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !720  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 2) ]
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7    ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !230
  %i.u = sext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.l, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !721
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !723
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = sext i32 %i.o to i64                    ; 2 uses
  %i.ag = icmp slt i32 %i.o, 0
  br i1 %i.ag, label %bb.a, label %rbimpl_size_mul_or_raise.exit36, !prof !177

bb.a:                                             ; preds = %vm_ci_kwarg.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.af) #42
  unreachable

rbimpl_size_mul_or_raise.exit36:                  ; preds = %vm_ci_kwarg.exit
  %i.ah = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.ai = alloca i8, i64 %i.ah, align 16          ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_size_mul_or_raise.exit36
  %i.aj = getelementptr i8, ptr %i.j, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !175
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.w, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.ai, ptr noundef nonnull readonly align 1 %i.am, i64 noundef %i.ah, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit36, %bb.b
  call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %.val35, ptr noundef nonnull %.val33, ptr noundef nonnull %i.ai, i32 noundef %i.o, ptr noundef %i.p, ptr noundef %i.ae)
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !124 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 240
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !190
  %.val = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %i.as = getelementptr i8, ptr %.val, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val34 = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.aw = load i32, ptr %i.s, align 8, !tbaa !230
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.ba = sext i32 %i.ap to i64
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba ; 5 uses
  %i.bc = getelementptr i8, ptr %i.az, i64 -8
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !73
  %i.bd = getelementptr i8, ptr %2, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !229
  %i.bf = getelementptr i8, ptr %2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !228
  %i.bh = getelementptr i8, ptr %.val34, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !124 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !147
  %i.bl = sub i32 %i.ar, %i.ap                    ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 264
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !355
  %i.bo = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !70 ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -56    ; 3 uses
  %i.br = add i32 %i.bn, %i.bl
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bb, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 56
  %.not.i38 = icmp ugt ptr %i.bq, %i.bu
  br i1 %.not.i38, label %.preheader.i, label %bb.c, !prof !72

.preheader.i:                                     ; preds = %ruby_nonempty_memcpy.exit
  %i.bv = icmp sgt i32 %i.bl, 0
  br i1 %i.bv, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bw = zext nneg i32 %i.bl to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bw, 2147483644              ; 4 uses
  %i.bx = shl nuw nsw i64 %n.vec, 3
  %i.by = getelementptr i8, ptr %i.bb, i64 %i.bx  ; 2 uses
  %i.bz = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.cb, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !737

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bw
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader42

.lr.ph.i.preheader42:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.by, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i

bb.c:                                             ; preds = %ruby_nonempty_memcpy.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader42, %.lr.ph.i
  %.026.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader42 ] ; 2 uses
  %.02325.i = phi i32 [ %i.ce, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader42 ]
  %i.cd = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.ce = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ce, %i.bl
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !738

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.bb, %.preheader.i ], [ %i.by, %middle.block ], [ %i.cd, %.lr.ph.i ] ; 4 uses
  %i.cf = ptrtoint ptr %.val to i64
  %i.cg = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.cf, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.ch = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.bg, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.ch, align 8, !tbaa !11
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -48
  store ptr %i.ci, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -40
  store ptr %.val34, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -32
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -24
  store ptr %i.ch, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_kwparm_nokwarg(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val25 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val25, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %.val27 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.val27, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !720  ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !230
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = getelementptr i8, ptr %i.j, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !721
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.j, align 8, !tbaa !723  ; 5 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y ; 7 uses
  %i.aa = icmp sgt i32 %i.w, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %i.j, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !731 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = ptrtoaddr ptr %i.ac to i64
end_hunk_1
