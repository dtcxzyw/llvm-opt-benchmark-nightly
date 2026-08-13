inline.NumInlined: 478
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@psa_generate_key_custom:bb.a

psa_driver_wrapper_generate_key.exit:             ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.cd = call i32 @psa_generate_key_internal(ptr noundef nonnull %0, ptr nonnull readonly poison, ptr noundef %2, i64 noundef %3, ptr noundef %i.cc, i64 noundef %i.bw, ptr noundef nonnull %i.ca) ; 2 uses
  %.not65 = icmp eq i32 %i.cd, 0
  %.pre93 = load ptr, ptr %i.b, align 8, !tbaa !31 ; 7 uses
  br i1 %.not65, label %bb.ai, label %psa_driver_wrapper_generate_key.exit.thread

psa_driver_wrapper_generate_key.exit.thread:      ; preds = %bb.ag, %psa_driver_wrapper_generate_key.exit
  %i.ce = phi ptr [ %.pre93, %psa_driver_wrapper_generate_key.exit ], [ %i.bx, %bb.ag ] ; 2 uses
  %.0.i7085 = phi i32 [ %i.cd, %psa_driver_wrapper_generate_key.exit ], [ %.mux.i, %bb.ag ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18 ; 2 uses
  %.not.i71 = icmp eq ptr %i.cg, null
  br i1 %.not.i71, label %psa_remove_key_data_from_memory.exit, label %bb.ah

bb.ah:                                            ; preds = %psa_driver_wrapper_generate_key.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !25
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cg, i64 noundef %i.ci) #20
  br label %psa_remove_key_data_from_memory.exit

psa_remove_key_data_from_memory.exit:             ; preds = %psa_driver_wrapper_generate_key.exit.thread, %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  br label %.thread

bb.ai:                                            ; preds = %psa_driver_wrapper_generate_key.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre93, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !32
  %i.cl = and i32 %i.ck, 255
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre93, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre93, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !25
  %i.cr = call i32 @psa_save_persistent_key(ptr noundef nonnull %.pre93, ptr noundef %i.co, i64 noundef %i.cq) #20 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.thread.i, label %.thread

.thread.i:                                        ; preds = %bb.aj, %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre93, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !33
  store i32 %i.cu, ptr %4, align 4, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre93, i64 24 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !28
  %.not.i.i73 = icmp eq i32 %i.cw, 1
  br i1 %.not.i.i73, label %psa_finish_key_creation.exit, label %psa_key_slot_state_transition.exit.i

psa_key_slot_state_transition.exit.i:             ; preds = %.thread.i
  store i32 0, ptr %4, align 4, !tbaa !36
  br label %.thread

psa_finish_key_creation.exit:                     ; preds = %.thread.i
  store i32 2, ptr %i.cv, align 8, !tbaa !28
  br label %psa_fail_key_creation.exit

.thread:                                          ; preds = %bb.af, %bb.k, %bb.f, %bb.i, %bb.j, %bb.h, %bb.ad, %psa_remove_key_data_from_memory.exit, %bb.p, %psa_start_key_creation.exit, %psa_key_slot_state_transition.exit.i, %bb.aj
  %.1.ph.ph = phi i32 [ -141, %bb.af ], [ -135, %bb.j ], [ -135, %bb.i ], [ %i.m, %bb.f ], [ -134, %bb.k ], [ %i.ah, %bb.p ], [ -135, %bb.h ], [ %.0.i7085, %psa_remove_key_data_from_memory.exit ], [ %i.bo, %bb.ad ], [ %i.w, %psa_start_key_creation.exit ], [ -151, %psa_key_slot_state_transition.exit.i ], [ %i.cr, %bb.aj ] ; 2 uses
  %.pr = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.cx = icmp eq ptr %.pr, null
  br i1 %i.cx, label %psa_fail_key_creation.exit, label %.thread.thread

.thread.thread:                                   ; preds = %bb.ae, %.thread
  %.1.ph104 = phi i32 [ %.1.ph.ph, %.thread ], [ -139, %bb.ae ] ; 4 uses
  %i.cy = phi ptr [ %.pr, %.thread ], [ %i.bq, %bb.ae ] ; 11 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i74, label %psa_remove_key_data_from_memory.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !25
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.da, i64 noundef %i.dc) #20
  br label %psa_remove_key_data_from_memory.exit.i.i

psa_remove_key_data_from_memory.exit.i.i:         ; preds = %bb.ak, %.thread.thread
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !28
  switch i32 %i.de, label %.thread.i.i [
    i32 2, label %.split.i.i
    i32 3, label %.split.i.i
    i32 1, label %bb.al
  ]

.thread.i.i:                                      ; preds = %psa_remove_key_data_from_memory.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i8 0, i64 56, i1 false)
  br label %psa_fail_key_creation.exit

.split.i.i:                                       ; preds = %psa_remove_key_data_from_memory.exit.i.i, %psa_remove_key_data_from_memory.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !29
  %.not9.i.i = icmp eq i64 %i.dg, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i8 0, i64 56, i1 false)
  br i1 %.not9.i.i, label %bb.am, label %psa_fail_key_creation.exit

bb.al:                                            ; preds = %psa_remove_key_data_from_memory.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !29
  %.not.i.i75 = icmp eq i64 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 28
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, i8 0, i64 56, i1 false)
  br i1 %.not.i.i75, label %bb.am, label %psa_fail_key_creation.exit

bb.am:                                            ; preds = %bb.al, %.split.i.i
  %i.dn = phi i8 [ %i.di, %.split.i.i ], [ %i.dm, %bb.al ]
  %i.do = zext i8 %i.dn to i64
  %i.dp = call i32 @psa_free_key_slot(i64 noundef %i.do, ptr noundef nonnull %i.cy) #20 ; 0 uses
  br label %psa_fail_key_creation.exit

psa_fail_key_creation.exit:                       ; preds = %bb.am, %bb.al, %.split.i.i, %.thread.i.i, %.thread, %psa_finish_key_creation.exit, %bb.e, %bb.d, %bb.b, %bb.a
  %.042 = phi i32 [ -135, %bb.d ], [ -135, %bb.a ], [ -135, %bb.b ], [ -135, %bb.e ], [ 0, %psa_finish_key_creation.exit ], [ %.1.ph.ph, %.thread ], [ %.1.ph104, %.thread.i.i ], [ %.1.ph104, %.split.i.i ], [ %.1.ph104, %bb.al ], [ %.1.ph104, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret i32 %.042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 -135, 1) i32 @psa_validate_key_type_and_size_for_key_generation(i16 noundef zeroext %0, i64 noundef range(i64 0, 65536) %1) unnamed_addr #1 {
bb.a:
  %i.a = and i16 %0, 28672
  switch i16 %i.a, label %bb.h [
    i16 8192, label %bb.b
    i16 4096, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  switch i16 %0, label %psa_validate_unstructured_key_bit_size.exit.thread [
    i16 4097, label %bb.g
    i16 4352, label %bb.g
    i16 4608, label %bb.g
    i16 4611, label %bb.g
    i16 4613, label %bb.g
    i16 9216, label %bb.c
    i16 9222, label %bb.d
    i16 9219, label %bb.e
    i16 8196, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %trunc36 = trunc nuw i64 %1 to i16
  switch i16 %trunc36, label %psa_validate_unstructured_key_bit_size.exit.thread [
    i16 256, label %bb.g
    i16 192, label %bb.g
    i16 128, label %bb.g
  ]

bb.d:                                             ; preds = %bb.b
  %trunc35 = trunc nuw i64 %1 to i16
  switch i16 %trunc35, label %psa_validate_unstructured_key_bit_size.exit.thread [
    i16 256, label %bb.g
    i16 192, label %bb.g
    i16 128, label %bb.g
  ]

bb.e:                                             ; preds = %bb.b
  %trunc = trunc nuw i64 %1 to i16
  switch i16 %trunc, label %psa_validate_unstructured_key_bit_size.exit.thread [
    i16 256, label %bb.g
    i16 192, label %bb.g
    i16 128, label %bb.g
  ]

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %1, 256
  br i1 %.not.i, label %psa_validate_unstructured_key_bit_size.exit, label %psa_validate_unstructured_key_bit_size.exit.thread

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.d, %bb.d, %bb.d, %bb.c, %bb.c, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.b = and i64 %1, 7
  %.not24.i = icmp eq i64 %i.b, 0
  br i1 %.not24.i, label %psa_validate_unstructured_key_bit_size.exit, label %psa_validate_unstructured_key_bit_size.exit.thread

bb.h:                                             ; preds = %bb.a
  %or.cond = icmp eq i16 %0, 28673
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.c = add nsw i64 %1, -1024
  %or.cond25 = icmp ult i64 %i.c, 3073
  %i.d = and i64 %1, 7
  %.not18 = icmp eq i64 %i.d, 0
  %or.cond26 = and i1 %or.cond25, %.not18
  br i1 %or.cond26, label %psa_validate_unstructured_key_bit_size.exit, label %psa_validate_unstructured_key_bit_size.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.e = and i16 %0, -256
  switch i16 %i.e, label %psa_validate_unstructured_key_bit_size.exit.thread.fold.split [
    i16 28928, label %psa_validate_unstructured_key_bit_size.exit.thread
    i16 29184, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.f = tail call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 54) ; 2 uses
  %switch.tableidx = add i64 %i.f, -2
  %i.g = icmp ult i64 %switch.tableidx, 7
  br i1 %i.g, label %switch.lookup, label %psa_validate_unstructured_key_bit_size.exit.thread

psa_validate_unstructured_key_bit_size.exit:      ; preds = %bb.f, %bb.g, %bb.i
  br label %psa_validate_unstructured_key_bit_size.exit.thread

psa_validate_unstructured_key_bit_size.exit.thread.fold.split: ; preds = %bb.j
  br label %psa_validate_unstructured_key_bit_size.exit.thread

switch.lookup:                                    ; preds = %bb.k
  %switch.gep.a = getelementptr [4 x i8], ptr @switch.table.psa_validate_key_type_and_size_for_key_generation, i64 %i.f
  %switch.gep = getelementptr i8, ptr %switch.gep.a, i64 -8
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %psa_validate_unstructured_key_bit_size.exit.thread

psa_validate_unstructured_key_bit_size.exit.thread: ; preds = %switch.lookup, %bb.k, %bb.j, %psa_validate_unstructured_key_bit_size.exit.thread.fold.split, %bb.d, %bb.c, %bb.e, %bb.b, %bb.g, %bb.f, %bb.i, %psa_validate_unstructured_key_bit_size.exit
  %.0 = phi i32 [ -135, %bb.f ], [ 0, %psa_validate_unstructured_key_bit_size.exit ], [ 0, %bb.j ], [ -134, %bb.i ], [ -134, %bb.k ], [ -135, %bb.d ], [ -135, %bb.c ], [ -135, %bb.e ], [ -134, %bb.b ], [ -135, %bb.g ], [ -134, %psa_validate_unstructured_key_bit_size.exit.thread.fold.split ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @psa_generate_key(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @psa_generate_key_custom(ptr noundef %0, ptr noundef nonnull @default_custom_production, ptr noundef null, i64 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @psa_generate_key_iop_get_num_ops(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.b = load i32, ptr %i.a, align 4, !tbaa !122
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @psa_generate_key_iop_setup(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  ret i32 -134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @psa_generate_key_iop_complete(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  ret i32 -137
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @psa_generate_key_iop_abort(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 -137, 1) i32 @mbedtls_psa_crypto_configure_entropy_sources(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 8), align 8, !tbaa !126
  store ptr %1, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -137, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_psa_crypto_free() local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @global_data, align 8, !tbaa !8 ; 3 uses
  %i.b = and i8 %i.a, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, -5                          ; 2 uses
  store i8 %i.c, ptr @global_data, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i8 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %i.e = and i8 %i.d, 2
  %.not1 = icmp eq i8 %i.e, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @psa_wipe_all_key_slots() #20
  %i.f = load i8, ptr @global_data, align 8, !tbaa !8
  %i.g = and i8 %i.f, -3
  store i8 %i.g, ptr @global_data, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  %.not2 = icmp eq i8 %i.h, 0
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @mbedtls_ctr_drbg_free(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 216)) #20
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !128
  tail call void %i.i(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24)) #20, !inline_history !129
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 8), i64 noundef 552) #20
  %i.j = load i8, ptr @global_data, align 8, !tbaa !8 ; 2 uses
  %i.k = and i8 %i.j, 1
  %.not3 = icmp eq i8 %i.k, 0
  br i1 %.not3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = and i8 %i.j, -2
  store i8 %i.l, ptr @global_data, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @psa_wipe_all_key_slots() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden i32 @psa_crypto_init() local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67 ; 2 uses
  %i.c = icmp ne i8 %i.b, 2
  %i.d = load i8, ptr @global_data, align 8       ; 4 uses
  %i.e = icmp ne i8 %i.d, 7
  %.not30 = select i1 %i.c, i1 true, i1 %i.e
  br i1 %.not30, label %bb.b, label %mbedtls_psa_crypto_free.exit

bb.b:                                             ; preds = %bb.a
  %i.f = and i8 %i.d, 1
  %.not8.i = icmp eq i8 %i.f, 0
  br i1 %.not8.i, label %bb.c, label %mbedtls_psa_crypto_init_subsystem.exit

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i8 %i.d, 1                   ; 2 uses
  store i8 %i.g, ptr @global_data, align 8, !tbaa !8
  br label %mbedtls_psa_crypto_init_subsystem.exit

mbedtls_psa_crypto_init_subsystem.exit:           ; preds = %bb.c, %bb.b
  %i.h = phi i8 [ %i.g, %bb.c ], [ %i.d, %bb.b ]  ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not7.i = icmp eq i8 %i.i, 0
  br i1 %.not7.i, label %mbedtls_psa_crypto_init_subsystem.exit14, label %mbedtls_psa_crypto_init_subsystem.exit14.thread

mbedtls_psa_crypto_init_subsystem.exit14:         ; preds = %mbedtls_psa_crypto_init_subsystem.exit
  %i.j = tail call i32 @psa_initialize_key_slots() #20 ; 2 uses
  %i.k = load i8, ptr @global_data, align 8, !tbaa !8
  %i.l = or i8 %i.k, 2                            ; 3 uses
  store i8 %i.l, ptr @global_data, align 8, !tbaa !8
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge, label %mbedtls_psa_crypto_init_subsystem.exit16

mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge: ; preds = %mbedtls_psa_crypto_init_subsystem.exit14
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  br label %mbedtls_psa_crypto_init_subsystem.exit14.thread

mbedtls_psa_crypto_init_subsystem.exit14.thread:  ; preds = %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge, %mbedtls_psa_crypto_init_subsystem.exit
  %i.m = phi i8 [ %i.b, %mbedtls_psa_crypto_init_subsystem.exit ], [ %.pre, %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge ]
  %i.n = phi i8 [ %i.h, %mbedtls_psa_crypto_init_subsystem.exit ], [ %i.l, %mbedtls_psa_crypto_init_subsystem.exit14.mbedtls_psa_crypto_init_subsystem.exit14.thread_crit_edge ] ; 2 uses
  %i.o = icmp eq i8 %i.m, 0
  %i.p = trunc i8 %i.n to i1
  %or.cond.i = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %mbedtls_psa_crypto_init_subsystem.exit14.thread
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 8), align 8, !tbaa !130 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @mbedtls_entropy_init, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 8), align 8, !tbaa !130
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ @mbedtls_entropy_init, %bb.e ], [ %i.q, %bb.d ]
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !128
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %mbedtls_psa_random_init.exit.i

bb.g:                                             ; preds = %bb.f
  store ptr @mbedtls_entropy_free, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 16), align 8, !tbaa !128
  br label %mbedtls_psa_random_init.exit.i

mbedtls_psa_random_init.exit.i:                   ; preds = %bb.g, %bb.f
  tail call void %i.s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24)) #20, !inline_history !131
  tail call void @mbedtls_ctr_drbg_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 216)) #20
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 4281168, ptr %i.a, align 4
  %i.v = call i32 @mbedtls_ctr_drbg_seed(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 216), ptr noundef nonnull @mbedtls_entropy_func, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_data, i64 24), ptr noundef nonnull %i.a, i64 noundef 3) #20
  %i.w = call range(i32 -4095, 1) i32 @mbedtls_to_psa_error(i32 noundef %i.v) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge

mbedtls_psa_random_init.exit.i.mbedtls_psa_crypto_init_subsystem.exit16_crit_edge: ; preds = %mbedtls_psa_random_init.exit.i
  %.pre31 = load i8, ptr @global_data, align 8, !tbaa !8
  br label %mbedtls_psa_crypto_init_subsystem.exit16

bb.h:                                             ; preds = %mbedtls_psa_random_init.exit.i
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @global_data, i64 1), align 1, !tbaa !67
  %.pre32 = load i8, ptr @global_data, align 8, !tbaa !8
  br label %bb.i

end_hunk_0
