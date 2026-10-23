Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mipi-disco-img?download=true
inline.NumInlined: 62
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@acpi_mipi_scan_crs_csi2:bb.a

.thread.loopexit.split.loop.exit.i111.i.i:        ; preds = %bb.w
  %i.di = trunc nuw i64 %indvars.iv.i107.i.i to i32
  br label %next_csi2_port_index.exit112.i.i

next_csi2_port_index.exit112.i.i:                 ; preds = %bb.z, %.thread.loopexit.split.loop.exit.i111.i.i, %bb.y
  %i.dj = phi i32 [ %.pre171.i.i, %bb.y ], [ %i.cy, %.thread.loopexit.split.loop.exit.i111.i.i ], [ %i.cy, %bb.z ]
  %.2.i110.i.i = phi i32 [ %i.dh, %bb.y ], [ %i.di, %.thread.loopexit.split.loop.exit.i111.i.i ], [ -2, %bb.z ] ; 3 uses
  %.not73.i.i = icmp ult i32 %.2.i110.i.i, %i.dj
  br i1 %.not73.i.i, label %.critedge102.i.i, label %next_csi2_port_index.exit112.thread.i.i, !prof !23

next_csi2_port_index.exit112.thread.i.i:          ; preds = %next_csi2_port_index.exit112.i.i, %.critedge.i.i
  call void asm sideeffect "452: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 452b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 452) #10, !srcloc !27
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.10, i32 318, i32 2307, i64 16) #10, !srcloc !28
  call void asm sideeffect "453: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 453b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 453) #10, !srcloc !29
  br label %extract_crs_csi2_conn_info.exit.i

.critedge102.i.i:                                 ; preds = %next_csi2_port_index.exit112.i.i
  %i.dk = load ptr, ptr %i.bv, align 8
  %i.dl = zext i32 %.2.i.i.i to i64
  %i.dm = getelementptr [624 x i8], ptr %i.dk, i64 %i.dl ; 31 uses
  %i.dn = load ptr, ptr %i.bw, align 8
  %i.do = shl i32 %.2.i.i.i, 1
  %i.dp = add i32 %i.do, 2
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr [24 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dm, i64 148
  store i8 1, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.cz, align 8
  %i.du = zext i32 %.2.i110.i.i to i64
  %i.dv = getelementptr [624 x i8], ptr %i.dt, i64 %i.du ; 30 uses
  %i.dw = getelementptr i8, ptr %i.cc, i64 192
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = shl i32 %.2.i110.i.i, 1
  %i.dz = add i32 %i.dy, 2
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr [24 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.dm, i64 472    ; 2 uses
  %.sroa.310.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.310.0..sroa_idx.i.i, i8 0, i64 144, i1 false)
  store ptr %i.eb, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %i.dv, i64 472    ; 2 uses
  %.sroa.38.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.38.0..sroa_idx.i.i, i8 0, i64 144, i1 false)
  store ptr %i.dr, ptr %i.ed, align 8
  %i.ee = getelementptr i8, ptr %i.dm, i64 216
  %.sroa.44.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.11, ptr %i.ee, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 224
  store i64 152, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.33.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 232
  store i8 0, ptr %.sroa.33.0..sroa_idx.i.i, align 8
  %.sroa.55.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 236
  store i32 5, ptr %.sroa.55.0..sroa_idx.i.i, align 4
  %.sroa.66.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 240
  store ptr %i.ec, ptr %.sroa.66.0..sroa_idx.i.i, align 8
  %i.ef = getelementptr i8, ptr %i.dm, i64 248
  %.sroa.4167.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4167.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.12, ptr %i.ef, align 8
  %.sroa.2165.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 256
  store i64 4, ptr %.sroa.2165.0..sroa_idx.i.i, align 8
  %.sroa.3166.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 264
  store i8 1, ptr %.sroa.3166.0..sroa_idx.i.i, align 8
  %.sroa.5168.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 268
  store i32 2, ptr %.sroa.5168.0..sroa_idx.i.i, align 4
  %.sroa.6169.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 272
  store i32 %.0.i.i45, ptr %.sroa.6169.0..sroa_idx.i.i, align 8
  %.sroa.7170.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 276
  store i32 0, ptr %.sroa.7170.0..sroa_idx.i.i, align 4
  %i.eg = getelementptr i8, ptr %i.dm, i64 280
  %.sroa.4160.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4160.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.13, ptr %i.eg, align 8
  %.sroa.2158.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 288
  store i64 4, ptr %.sroa.2158.0..sroa_idx.i.i, align 8
  %.sroa.3159.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 296
  store i8 1, ptr %.sroa.3159.0..sroa_idx.i.i, align 8
  %.sroa.5161.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 300
  store i32 2, ptr %.sroa.5161.0..sroa_idx.i.i, align 4
  %.sroa.6162.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 304
  store i32 0, ptr %.sroa.6162.0..sroa_idx.i.i, align 8
  %.sroa.7163.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 308
  store i32 0, ptr %.sroa.7163.0..sroa_idx.i.i, align 4
  %i.eh = getelementptr i8, ptr %i.dm, i64 152
  %i.ei = load i8, ptr %i.cg, align 1
  %i.ej = zext i8 %i.ei to i32
  store ptr @.str.13, ptr %i.eh, align 8
  %.sroa.2151.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 160
  store i64 4, ptr %.sroa.2151.0..sroa_idx.i.i, align 8
  %.sroa.3152.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 168
  store i8 1, ptr %.sroa.3152.0..sroa_idx.i.i, align 8
  %.sroa.4153.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 169
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4153.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5154.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 172
  store i32 2, ptr %.sroa.5154.0..sroa_idx.i.i, align 4
  %.sroa.6155.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 176
  store i32 %i.ej, ptr %.sroa.6155.0..sroa_idx.i.i, align 8
  %.sroa.7156.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 180
  store i32 0, ptr %.sroa.7156.0..sroa_idx.i.i, align 4
  %i.ek = load i8, ptr %i.cg, align 1
  %i.el = zext i8 %i.ek to i32
  %i.em = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dm, i64 noundef 9, ptr noundef @.str.14, i32 noundef %i.el) #11
  %i.en = icmp ugt i32 %i.em, 8
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge102.i.i
  %i.eo = load i8, ptr %i.cg, align 1
  %i.ep = zext i8 %i.eo to i32
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.bs, ptr noundef @.str.15, i32 noundef %i.ep) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge102.i.i
  %i.eq = getelementptr i8, ptr %i.dv, i64 216
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 233
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.11, ptr %i.eq, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 224
  store i64 152, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 232
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 236
  store i32 5, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 240
  store ptr %i.ed, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.er = getelementptr i8, ptr %i.dv, i64 248
  %.sroa.4146.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4146.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.12, ptr %i.er, align 8
  %.sroa.2144.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 256
  store i64 4, ptr %.sroa.2144.0..sroa_idx.i.i, align 8
  %.sroa.3145.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 264
  store i8 1, ptr %.sroa.3145.0..sroa_idx.i.i, align 8
  %.sroa.5147.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 268
  store i32 2, ptr %.sroa.5147.0..sroa_idx.i.i, align 4
  %.sroa.6148.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 272
  store i32 %.0.i.i45, ptr %.sroa.6148.0..sroa_idx.i.i, align 8
  %.sroa.7149.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 276
  store i32 0, ptr %.sroa.7149.0..sroa_idx.i.i, align 4
  %i.es = getelementptr i8, ptr %i.dv, i64 280
  %.sroa.4139.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 297
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4139.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.13, ptr %i.es, align 8
  %.sroa.2137.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 288
  store i64 4, ptr %.sroa.2137.0..sroa_idx.i.i, align 8
  %.sroa.3138.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 296
  store i8 1, ptr %.sroa.3138.0..sroa_idx.i.i, align 8
  %.sroa.5140.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 300
  store i32 2, ptr %.sroa.5140.0..sroa_idx.i.i, align 4
  %.sroa.6141.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 304
  store i32 0, ptr %.sroa.6141.0..sroa_idx.i.i, align 8
  %.sroa.7142.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 308
  store i32 0, ptr %.sroa.7142.0..sroa_idx.i.i, align 4
  %i.et = getelementptr i8, ptr %i.dv, i64 152
  %i.eu = load i8, ptr %i.cu, align 2
  %i.ev = zext i8 %i.eu to i32
  store ptr @.str.13, ptr %i.et, align 8
  %.sroa.2.0..sroa_idx131.i.i = getelementptr i8, ptr %i.dv, i64 160
  store i64 4, ptr %.sroa.2.0..sroa_idx131.i.i, align 8
  %.sroa.3.0..sroa_idx132.i.i = getelementptr i8, ptr %i.dv, i64 168
  store i8 1, ptr %.sroa.3.0..sroa_idx132.i.i, align 8
  %.sroa.4133.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 169
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4133.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5.0..sroa_idx134.i.i = getelementptr i8, ptr %i.dv, i64 172
  store i32 2, ptr %.sroa.5.0..sroa_idx134.i.i, align 4
  %.sroa.6.0..sroa_idx135.i.i = getelementptr i8, ptr %i.dv, i64 176
  store i32 %i.ev, ptr %.sroa.6.0..sroa_idx135.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 180
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i, align 4
  %i.ew = load i8, ptr %i.cu, align 2
  %i.ex = zext i8 %i.ew to i32
  %i.ey = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dv, i64 noundef 9, ptr noundef @.str.14, i32 noundef %i.ex) #11
  %i.ez = icmp ugt i32 %i.ey, 8
  br i1 %i.ez, label %bb.ac, label %extract_crs_csi2_conn_info.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.fa = load i8, ptr %i.cu, align 2
  %i.fb = zext i8 %i.fa to i32
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.bs, ptr noundef @.str.16, i32 noundef %i.fb) #11
  br label %extract_crs_csi2_conn_info.exit.i

extract_crs_csi2_conn_info.exit.i:                ; preds = %bb.ac, %bb.ab, %next_csi2_port_index.exit112.thread.i.i, %next_csi2_port_index.exit.thread.i.i, %bb.q, %bb.n, %bb.m
  %.0.i46 = load ptr, ptr %.028.i, align 8        ; 2 uses
  %.not16.i = icmp eq ptr %.0.i46, %i.bt
  br i1 %.not16.i, label %prepare_crs_csi2_swnodes.exit, label %bb.m, !llvm.loop !21

prepare_crs_csi2_swnodes.exit:                    ; preds = %extract_crs_csi2_conn_info.exit.i, %.lr.ph75, %bb.l
  %.2 = load ptr, ptr %.274, align 8              ; 2 uses
  %.not48 = icmp eq ptr %.2, @acpi_mipi_crs_csi2_list
  br i1 %.not48, label %._crit_edge76, label %.lr.ph75, !llvm.loop !22

._crit_edge76:                                    ; preds = %prepare_crs_csi2_swnodes.exit, %list_splice.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_mipi_init_crs_csi2_swnodes() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 20 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [17 x i8], align 16               ; 6 uses
  %0 = alloca %struct.acpi_buffer, align 8        ; 5 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.f, @acpi_mipi_crs_csi2_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %init_crs_csi2_swnodes.exit
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %.01115, %init_crs_csi2_swnodes.exit ] ; 3 uses
  %.01115 = load ptr, ptr %.014, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) @__const.init_crs_csi2_swnodes.buffer, i64 16, i1 false)
  %i.h = getelementptr i8, ptr %.014, i64 24      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 18 uses
  %i.j = getelementptr i8, ptr %.014, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %init_crs_csi2_swnodes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = call ptr @acpi_fetch_acpi_dev(ptr noundef %i.k) #11 ; 4 uses
  %.not81.i = icmp eq ptr %i.l, null
  br i1 %.not81.i, label %init_crs_csi2_swnodes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 4, !annotation !12
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 7 uses
  %i.n = call zeroext i1 @fwnode_property_present(ptr noundef %i.m, ptr noundef @.str.17) #11
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store ptr null, ptr %i.e, align 8, !annotation !12
  %i.o = call zeroext i1 @acpi_get_physical_device_location(ptr noundef %i.k, ptr noundef nonnull %i.e) #11
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 26
  %i.r = load i8, ptr %i.q, align 2
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.s, 45
  store ptr @.str.17, ptr %i.i, align 8
  %.sroa.2143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 4, ptr %.sroa.2143.0..sroa_idx.i, align 8
  %.sroa.3144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 1, ptr %.sroa.3144.0..sroa_idx.i, align 8
  %.sroa.4145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4145.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %.sroa.5146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 2, ptr %.sroa.5146.0..sroa_idx.i, align 4
  %.sroa.6147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.t, ptr %.sroa.6147.0..sroa_idx.i, align 8
  %.sroa.7148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 0, ptr %.sroa.7148.0..sroa_idx.i, align 4
  call void @kfree(ptr noundef %i.p) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.2.i = phi i32 [ 0, %bb.d ], [ %.1.i, %bb.g ]  ; 3 uses
  %i.u = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef @.str.18, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not84.i = icmp eq i32 %i.u, 0
  br i1 %.not84.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = add nuw nsw i32 %.2.i, 1
  %i.w = zext nneg i32 %.2.i to i64
  %i.x = getelementptr [32 x i8], ptr %i.i, i64 %i.w ; 7 uses
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4138.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %i.y = load i32, ptr %i.d, align 4
  store ptr @.str.19, ptr %i.x, align 8
  %.sroa.2136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 4, ptr %.sroa.2136.0..sroa_idx.i, align 8
  %.sroa.3137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i8 1, ptr %.sroa.3137.0..sroa_idx.i, align 8
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i32 2, ptr %.sroa.5139.0..sroa_idx.i, align 4
  %.sroa.6140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %i.y, ptr %.sroa.6140.0..sroa_idx.i, align 8
  %.sroa.7141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 0, ptr %.sroa.7141.0..sroa_idx.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4.i = phi i32 [ %.2.i, %bb.h ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef @.str.20, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not90.i = icmp eq i32 %i.z, 0
  br i1 %.not90.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = add nuw nsw i32 %.4.i, 1
  %i.ab = zext nneg i32 %.4.i to i64
  %i.ac = getelementptr [32 x i8], ptr %i.i, i64 %i.ab ; 7 uses
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4131.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %i.ad = load i32, ptr %i.d, align 4
  store ptr @.str.21, ptr %i.ac, align 8
  %.sroa.2129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 4, ptr %.sroa.2129.0..sroa_idx.i, align 8
  %.sroa.3130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i8 1, ptr %.sroa.3130.0..sroa_idx.i, align 8
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 2, ptr %.sroa.5132.0..sroa_idx.i, align 4
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 %i.ad, ptr %.sroa.6133.0..sroa_idx.i, align 8
  %.sroa.7134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  store i32 0, ptr %.sroa.7134.0..sroa_idx.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.6.i = phi i32 [ %.4.i, %bb.j ], [ %i.aa, %bb.k ] ; 3 uses
  %i.ae = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef @.str.22, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not96.i = icmp eq i32 %i.ae, 0
  br i1 %.not96.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = add nuw nsw i32 %.6.i, 1
  %i.ag = zext nneg i32 %.6.i to i64
  %i.ah = getelementptr [32 x i8], ptr %i.i, i64 %i.ag ; 7 uses
  %.sroa.4124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4124.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %i.ai = load i32, ptr %i.d, align 4
  store ptr @.str.23, ptr %i.ah, align 8
  %.sroa.2122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 4, ptr %.sroa.2122.0..sroa_idx.i, align 8
  %.sroa.3123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i8 1, ptr %.sroa.3123.0..sroa_idx.i, align 8
  %.sroa.5125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  store i32 2, ptr %.sroa.5125.0..sroa_idx.i, align 4
  %.sroa.6126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %i.ai, ptr %.sroa.6126.0..sroa_idx.i, align 8
  %.sroa.7127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i32 0, ptr %.sroa.7127.0..sroa_idx.i, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.8.i = phi i32 [ %.6.i, %bb.l ], [ %i.af, %bb.m ]
  %i.aj = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef @.str.24, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not102.i = icmp eq i32 %i.aj, 0
  br i1 %.not102.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = zext nneg i32 %.8.i to i64
  %i.al = getelementptr [32 x i8], ptr %i.i, i64 %i.ak ; 7 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %i.am = load i32, ptr %i.d, align 4
  store ptr @.str.25, ptr %i.al, align 8
  %.sroa.2.0..sroa_idx119.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 4, ptr %.sroa.2.0..sroa_idx119.i, align 8
  %.sroa.3.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i8 1, ptr %.sroa.3.0..sroa_idx120.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = call i32 @acpi_get_name(ptr noundef %i.k, i32 noundef 0, ptr noundef nonnull %0) #11
  %.not108.i = icmp eq i32 %i.an, 0
  br i1 %.not108.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.k, ptr noundef @.str.26) #11
  br label %init_crs_csi2_swnodes.exit

bb.r:                                             ; preds = %bb.p
  %i.ao = getelementptr i8, ptr %i.i, i64 192     ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.aq = load ptr, ptr %1, align 8
  store ptr %i.aq, ptr %i.ap, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ar = getelementptr i8, ptr %i.i, i64 216     ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %.not117.i = icmp eq i32 %i.as, 0
  br i1 %.not117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.at = getelementptr i8, ptr %i.i, i64 208     ; 2 uses
  %i.au = getelementptr i8, ptr %i.l, i64 8       ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %fwnode_handle_put.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %fwnode_handle_put.exit.i ] ; 4 uses
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = getelementptr [624 x i8], ptr %i.av, i64 %indvars.iv.i ; 25 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 144    ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !annotation !12
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 17, ptr noundef @.str.29, ptr noundef @.str.30, i32 noundef %i.ay) #11
  %i.ba = icmp ugt i32 %i.az, 16
  br i1 %i.ba, label %get_mipi_port_handle.exit.thread.i, label %get_mipi_port_handle.exit.i

get_mipi_port_handle.exit.thread.i:               ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.t

get_mipi_port_handle.exit.i:                      ; preds = %bb.s
  %i.bb = call ptr @fwnode_get_named_child_node(ptr noundef %i.m, ptr noundef nonnull %i.c) #11 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %.not109.i = icmp eq ptr %i.bb, null
  br i1 %.not109.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %get_mipi_port_handle.exit.i, %get_mipi_port_handle.exit.thread.i
  %i.bc = load i32, ptr %i.ax, align 8
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.k, ptr noundef @.str.27, i32 noundef %i.bc) #11
  br label %fwnode_handle_put.exit.i

bb.u:                                             ; preds = %get_mipi_port_handle.exit.i
  %.val.i.i = load ptr, ptr %i.au, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bd = load i32, ptr %i.ax, align 8
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.aw, i64 noundef 9, ptr noundef @.str.14, i32 noundef %i.bd) #11
  %i.bf = icmp ugt i32 %i.be, 8
  br i1 %i.bf, label %init_csi2_port.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.bg = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.bh = trunc nuw i64 %indvars.iv.i to i32
  %i.bi = shl i32 %i.bh, 1                        ; 2 uses
  %i.bj = or disjoint i32 %i.bi, 1
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr [24 x i8], ptr %i.bg, i64 %i.bk ; 3 uses
  %i.bm = getelementptr i8, ptr %i.aw, i64 152
  store ptr %i.aw, ptr %i.bl, align 8
  %.sroa.241.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bg, ptr %.sroa.241.0..sroa_idx.i.i, align 8
  %.sroa.342.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bm, ptr %.sroa.342.0..sroa_idx.i.i, align 8
  %i.bn = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.31, ptr noundef nonnull %i.a, i64 noundef 1) #11
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr i8, ptr %i.aw, i64 312
  %.sroa.4134.0..sroa_idx.i.i = getelementptr i8, ptr %i.aw, i64 329
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4134.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %i.bp = load i8, ptr %i.a, align 8
  %i.bq = zext i8 %i.bp to i32
  store ptr @.str.32, ptr %i.bo, align 8
  %.sroa.2.0..sroa_idx132.i.i = getelementptr i8, ptr %i.aw, i64 320
  store i64 4, ptr %.sroa.2.0..sroa_idx132.i.i, align 8
  %.sroa.3.0..sroa_idx133.i.i = getelementptr i8, ptr %i.aw, i64 328
  store i8 1, ptr %.sroa.3.0..sroa_idx133.i.i, align 8
  %.sroa.5.0..sroa_idx135.i.i = getelementptr i8, ptr %i.aw, i64 332
  store i32 2, ptr %.sroa.5.0..sroa_idx135.i.i, align 4
  %.sroa.6.0..sroa_idx136.i.i = getelementptr i8, ptr %i.aw, i64 336
  store i32 %i.bq, ptr %.sroa.6.0..sroa_idx136.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.aw, i64 340
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i.i = phi i32 [ 3, %bb.v ], [ 4, %bb.w ]    ; 4 uses
  %i.br = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.33, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp samesign ugt i32 %i.br, 8
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val.i.i, ptr noundef @.str.34, i32 noundef %i.br) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.099.i.i = phi i32 [ 8, %bb.z ], [ %i.br, %bb.y ] ; 10 uses
  %i.bu = zext nneg i32 %.099.i.i to i64          ; 2 uses
  %i.bv = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.33, ptr noundef nonnull %i.a, i64 noundef %i.bu) #11
  %.not111.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not111.i.i, label %.preheader114.i.i, label %bb.ad

.preheader114.i.i:                                ; preds = %bb.aa
  %8 = getelementptr i8, ptr %i.aw, i64 12        ; 2 uses
  %9 = load i8, ptr %i.a, align 8
  %10 = zext i8 %9 to i32
  store i32 %10, ptr %8, align 4
  %exitcond.not.i.i = icmp eq i32 %.099.i.i, 1
  br i1 %exitcond.not.i.i, label %.epilog-lcssa, label %.preheader114.i.i.a

.preheader114.i.i.a:                              ; preds = %.preheader114.i.i
  %11 = load i8, ptr %2, align 1
  %12 = zext i8 %11 to i32
  %i.bw = getelementptr i8, ptr %i.aw, i64 16
  store i32 %12, ptr %i.bw, align 8
  %exitcond.not.i.i.1 = icmp eq i32 %.099.i.i, 2
  br i1 %exitcond.not.i.i.1, label %.epilog-lcssa, label %.preheader114.i.i.new

.preheader114.i.i.new:                            ; preds = %.preheader114.i.i.a
  %13 = load i8, ptr %3, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %i.aw, i64 20
  store i32 %14, ptr %15, align 4
  %exitcond.not.i.i.2 = icmp eq i32 %.099.i.i, 3
  br i1 %exitcond.not.i.i.2, label %.epilog-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.preheader114.i.i.new
  %i.bx = load i8, ptr %4, align 1
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.aw, i64 24
  store i32 %i.by, ptr %i.bz, align 8
  %niter.ncmp.3.a = icmp eq i32 %.099.i.i, 4
  br i1 %niter.ncmp.3.a, label %.epilog-lcssa, label %.unr-lcssa

.unr-lcssa:                                       ; preds = %bb.ab
  %16 = load i8, ptr %5, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %i.aw, i64 28
  store i32 %17, ptr %18, align 4
  %lcmp.mod.not.a = icmp eq i32 %.099.i.i, 5
  br i1 %lcmp.mod.not.a, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %19 = load i8, ptr %6, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr i8, ptr %i.aw, i64 32
  store i32 %20, ptr %21, align 8
  %exitcond.not.i.i.5 = icmp eq i32 %.099.i.i, 6
  br i1 %exitcond.not.i.i.5, label %.epilog-lcssa, label %bb.ac

bb.ac:                                            ; preds = %.epil.preheader
  %i.ca = load i8, ptr %7, align 2
  %i.cb = zext i8 %i.ca to i32
  %22 = getelementptr i8, ptr %i.aw, i64 36
  store i32 %i.cb, ptr %22, align 4
  %epil.iter.cmp.not.a = icmp eq i32 %.099.i.i, 7
  br i1 %epil.iter.cmp.not.a, label %.epilog-lcssa, label %23

23:                                               ; preds = %bb.ac
  %24 = load i8, ptr %i.g, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr i8, ptr %i.aw, i64 40
  store i32 %25, ptr %26, align 8
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %23, %bb.ac, %.epil.preheader, %.unr-lcssa, %bb.ab, %.preheader114.i.i.new, %.preheader114.i.i.a, %.preheader114.i.i
  %i.cc = getelementptr i8, ptr %i.aw, i64 216
  %i.cd = add nuw nsw i32 %.1.i.i, 1
  %i.ce = zext nneg i32 %.1.i.i to i64
  %i.cf = getelementptr [32 x i8], ptr %i.cc, i64 %i.ce ; 6 uses
  %i.cg = shl nuw nsw i64 %i.bu, 2
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.425.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.35, ptr %i.cf, align 8
  %.sroa.223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i64 %i.cg, ptr %.sroa.223.0..sroa_idx.i.i, align 8
  %.sroa.324.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i8 0, ptr %.sroa.324.0..sroa_idx.i.i, align 8
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  store i32 2, ptr %.sroa.526.0..sroa_idx.i.i, align 4
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %8, ptr %.sroa.627.0..sroa_idx.i.i, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.epilog-lcssa, %bb.aa, %bb.x
  %.1100.i.i = phi i32 [ %.099.i.i, %bb.aa ], [ %.099.i.i, %.epilog-lcssa ], [ 0, %bb.x ]
  %.3.i.i = phi i32 [ %.1.i.i, %bb.aa ], [ %i.cd, %.epilog-lcssa ], [ %.1.i.i, %bb.x ] ; 4 uses
  %i.ch = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.36, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cj = zext nneg i32 %i.ch to i64              ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 3                ; 2 uses
  %i.cl = add nuw nsw i32 %.1100.i.i, 1           ; 2 uses
  %i.cm = zext nneg i32 %i.cl to i64              ; 3 uses
  %i.cn = icmp samesign ult i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val.i.i, ptr noundef @.str.37, i64 noundef %i.ck, i32 noundef %i.cl) #11
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.co = icmp samesign ugt i32 %i.ch, 8
  br i1 %i.co, label %.thread.i.i, label %.lr.ph.preheader.i.i

.thread.i.i:                                      ; preds = %bb.ag
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val.i.i, ptr noundef @.str.38, i32 noundef %i.ch) #11
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread.i.i, %bb.ag
  %.sink.i = phi i64 [ 8, %.thread.i.i ], [ %i.cj, %bb.ag ] ; 4 uses
  %i.cp = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.36, ptr noundef nonnull %i.a, i64 noundef %.sink.i) #11 ; 0 uses
  %i.cq = add nsw i64 %.sink.i, -1
  %xtraiter30 = and i64 %.sink.i, 3               ; 3 uses
  %i.cr = icmp ult i64 %i.cq, 3
  br i1 %i.cr, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter35 = and i64 %.sink.i, 2147483644
  br label %.lr.ph.i.i

.preheader.i.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %.preheader.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv122.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next123.i.i.3, %.preheader.i.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.dy, %.preheader.i.loopexit.i.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter30, 0
  call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv122.i.i.epil = phi i64 [ %indvars.iv122.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next123.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %i.cs = phi i64 [ %.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.cy, %.lr.ph.i.i.epil ]
  %epil.iter31 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i.epil ]
  %i.ct = getelementptr i8, ptr %i.a, i64 %indvars.iv122.i.i.epil
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i64
  %i.cw = shl nuw nsw i64 %indvars.iv122.i.i.epil, 3
  %i.cx = shl i64 %i.cv, %i.cw
  %i.cy = or i64 %i.cx, %i.cs                     ; 2 uses
  %indvars.iv.next123.i.i.epil = add nuw nsw i64 %indvars.iv122.i.i.epil, 1
  %epil.iter31.next = add i64 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i64 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %.preheader.i.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !30

.preheader.i.loopexit.i:                          ; preds = %.lr.ph.i.i.epil, %.preheader.i.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.dy, %.preheader.i.loopexit.i.unr-lcssa ], [ %i.cy, %.lr.ph.i.i.epil ]
  store i64 %.lcssa, ptr %i.b, align 8
  %i.cz = getelementptr i8, ptr %i.aw, i64 44     ; 2 uses
  br label %arch_test_bit.exit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv122.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next123.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %i.da = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.dy, %.lr.ph.i.i ]
  %niter36 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter36.next.3, %.lr.ph.i.i ]
  %i.db = getelementptr i8, ptr %i.a, i64 %indvars.iv122.i.i
  %i.dc = load i8, ptr %i.db, align 4
  %i.dd = zext i8 %i.dc to i64
  %i.de = shl nuw nsw i64 %indvars.iv122.i.i, 3
  %i.df = shl i64 %i.dd, %i.de
  %i.dg = or i64 %i.df, %i.da
  %indvars.iv.next123.i.i = or disjoint i64 %indvars.iv122.i.i, 1 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.a, i64 %indvars.iv.next123.i.i
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %indvars.iv.next123.i.i, 3
  %i.dl = shl i64 %i.dj, %i.dk
  %i.dm = or i64 %i.dl, %i.dg
  %indvars.iv.next123.i.i.1 = or disjoint i64 %indvars.iv122.i.i, 2 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.a, i64 %indvars.iv.next123.i.i.1
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %indvars.iv.next123.i.i.1, 3
  %i.dr = shl i64 %i.dp, %i.dq
  %i.ds = or i64 %i.dr, %i.dm
  %indvars.iv.next123.i.i.2 = or disjoint i64 %indvars.iv122.i.i, 3 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %indvars.iv.next123.i.i.2
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %indvars.iv.next123.i.i.2, 3
  %i.dx = shl i64 %i.dv, %i.dw
  %i.dy = or i64 %i.dx, %i.ds                     ; 3 uses
  %indvars.iv.next123.i.i.3 = add nuw nsw i64 %indvars.iv122.i.i, 4 ; 2 uses
  %niter36.next.3 = add i64 %niter36, 4           ; 2 uses
  %niter36.ncmp.3 = icmp eq i64 %niter36.next.3, %unroll_iter35
  br i1 %niter36.ncmp.3, label %.preheader.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !31

arch_test_bit.exit.i.i:                           ; preds = %arch_test_bit.exit.i.i, %.preheader.i.loopexit.i
  %indvars.iv127.i.i = phi i64 [ 0, %.preheader.i.loopexit.i ], [ %indvars.iv.next128.i.i, %arch_test_bit.exit.i.i ] ; 3 uses
  %i.dz = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.b, i64 range(i64 0, 9) %indvars.iv127.i.i) #10, !srcloc !36 ; 2 uses
  %i.ea = icmp ult i8 %i.dz, 2
  call void @llvm.assume(i1 %i.ea)
  %i.eb = zext nneg i8 %i.dz to i32
  %i.ec = getelementptr [4 x i8], ptr %i.cz, i64 %indvars.iv127.i.i
  store i32 %i.eb, ptr %i.ec, align 4
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i, 1 ; 2 uses
  %exitcond131.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, %i.cm
  br i1 %exitcond131.not.i.i, label %bb.ah, label %arch_test_bit.exit.i.i, !llvm.loop !32

bb.ah:                                            ; preds = %arch_test_bit.exit.i.i
  %i.ed = getelementptr i8, ptr %i.aw, i64 216
  %i.ee = add nuw nsw i32 %.3.i.i, 1
  %i.ef = zext nneg i32 %.3.i.i to i64
  %i.eg = getelementptr [32 x i8], ptr %i.ed, i64 %i.ef ; 6 uses
  %i.eh = shl nuw nsw i64 %i.cm, 2
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.39, ptr %i.eg, align 8
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %i.eh, ptr %.sroa.23.0..sroa_idx.i.i, align 8
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i8 0, ptr %.sroa.34.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  store i32 2, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.cz, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ad
  %.5.i.i = phi i32 [ %i.ee, %bb.ah ], [ %.3.i.i, %bb.af ], [ %.3.i.i, %bb.ad ]
  %i.ei = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ej = add i32 %i.bi, 2
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr [24 x i8], ptr %i.ei, i64 %i.ek ; 3 uses
  %i.em = getelementptr [24 x i8], ptr %i.ei, i64 %i.bk
  %i.en = load ptr, ptr %i.at, align 8
  %i.eo = getelementptr [624 x i8], ptr %i.en, i64 %indvars.iv.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 216
  store ptr @.str.40, ptr %i.el, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.em, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr %i.ep, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.eq = getelementptr i8, ptr %i.aw, i64 148
  %i.er = load i8, ptr %i.eq, align 4, !range !37, !noundef !38
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.aj, label %init_csi2_port.exit.i

bb.aj:                                            ; preds = %bb.ai
  %.val113.i.i = load ptr, ptr %i.au, align 8     ; 2 uses
  %i.et = call i32 @fwnode_property_read_u64_array(ptr noundef nonnull %i.bb, ptr noundef @.str.41, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.eu = icmp slt i32 %i.et, 1
  br i1 %i.eu, label %init_csi2_port.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ev = icmp samesign ugt i32 %i.et, 8
  br i1 %i.ev, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val113.i.i, ptr noundef @.str.42, i32 noundef %i.et) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i.i.i = phi i32 [ 8, %bb.al ], [ %i.et, %bb.ak ]
  %i.ew = getelementptr i8, ptr %i.aw, i64 80     ; 2 uses
  %i.ex = zext nneg i32 %.0.i.i.i to i64          ; 2 uses
  %i.ey = call i32 @fwnode_property_read_u64_array(ptr noundef nonnull %i.bb, ptr noundef @.str.41, ptr noundef %i.ew, i64 noundef %i.ex) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val113.i.i, ptr noundef @.str.43, i32 noundef %i.ey) #11
  br label %init_csi2_port.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.ez = getelementptr i8, ptr %i.aw, i64 216
  %i.fa = zext nneg i32 %.5.i.i to i64
  %i.fb = getelementptr [32 x i8], ptr %i.ez, i64 %i.fa ; 6 uses
  %i.fc = shl nuw nsw i64 %i.ex, 3
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.44, ptr %i.fb, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %i.fc, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  store i32 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store ptr %i.ew, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  br label %init_csi2_port.exit.i

init_csi2_port.exit.i:                            ; preds = %bb.ao, %bb.an, %bb.aj, %bb.ai, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.fd = icmp ugt ptr %i.bb, inttoptr (i64 -4096 to ptr)
  br i1 %i.fd, label %fwnode_handle_put.exit.i, label %bb.ap

bb.ap:                                            ; preds = %init_csi2_port.exit.i
  %i.fe = getelementptr i8, ptr %i.bb, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not.i110.i = icmp eq ptr %i.ff, null
  br i1 %.not.i110.i, label %fwnode_handle_put.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not6.i.i = icmp eq ptr %i.fh, null
  br i1 %.not6.i.i, label %fwnode_handle_put.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.fh(ptr noundef nonnull %i.bb) #11, !inline_history !33
  br label %fwnode_handle_put.exit.i

fwnode_handle_put.exit.i:                         ; preds = %bb.ar, %bb.aq, %bb.ap, %init_csi2_port.exit.i, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fi = load i32, ptr %i.ar, align 8
  %i.fj = zext i32 %i.fi to i64
  %i.fk = icmp samesign ult i64 %indvars.iv.next.i, %i.fj
  br i1 %i.fk, label %bb.s, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %fwnode_handle_put.exit.i, %bb.r
  %i.fl = getelementptr i8, ptr %i.i, i64 200
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call i32 @software_node_register_node_group(ptr noundef %i.fm) #11 ; 2 uses
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge.i
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.k, ptr noundef @.str.28, i32 noundef %i.fn) #11
  br label %init_crs_csi2_swnodes.exit

bb.at:                                            ; preds = %._crit_edge.i
  %i.fp = getelementptr i8, ptr %i.l, i64 584
  store ptr %i.i, ptr %i.fp, align 8
  %i.fq = load ptr, ptr %i.ao, align 8
  %i.fr = call ptr @software_node_fwnode(ptr noundef %i.fq) #11
  store ptr %i.fr, ptr %i.m, align 8
  store ptr null, ptr %i.h, align 8
  br label %init_crs_csi2_swnodes.exit

init_crs_csi2_swnodes.exit:                       ; preds = %bb.b, %bb.c, %bb.q, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %.not = icmp eq ptr %.01115, @acpi_mipi_crs_csi2_list
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !35

._crit_edge:                                      ; preds = %init_crs_csi2_swnodes.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_mipi_crs_csi2_cleanup() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.a, @acpi_mipi_crs_csi2_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %acpi_mipi_del_crs_csi2.exit
  %.014 = phi ptr [ %.01115, %acpi_mipi_del_crs_csi2.exit ], [ %i.a, %bb.a ] ; 7 uses
  %.01115 = load ptr, ptr %.014, align 8          ; 4 uses
  %i.b = getelementptr i8, ptr %.014, i64 8       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %.01115, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store volatile ptr %.01115, ptr %i.c, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.014, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %.014, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @acpi_detach_data(ptr noundef %i.f, ptr noundef @acpi_mipi_data_tag) #11 ; 0 uses
  %i.h = getelementptr i8, ptr %.014, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @kfree(ptr noundef %i.i) #11
  %i.j = getelementptr i8, ptr %.014, i64 32      ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not15.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not15.i.i, label %acpi_mipi_del_crs_csi2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.016.i.i = phi ptr [ %.014.i.i, %.lr.ph.i.i ], [ %i.k, %.lr.ph ] ; 4 uses
  %.014.i.i = load ptr, ptr %.016.i.i, align 8    ; 4 uses
  %i.l = getelementptr i8, ptr %.016.i.i, i64 8   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %.014.i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store volatile ptr %.014.i.i, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.016.i.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  tail call void @kfree(ptr noundef %.016.i.i) #11
  %.not.i.i = icmp eq ptr %.014.i.i, %i.j
  br i1 %.not.i.i, label %acpi_mipi_del_crs_csi2.exit, label %.lr.ph.i.i, !llvm.loop !0

acpi_mipi_del_crs_csi2.exit:                      ; preds = %.lr.ph.i.i, %.lr.ph
  tail call void @kfree(ptr noundef %.014) #11
  %.not = icmp eq ptr %.01115, @acpi_mipi_crs_csi2_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %acpi_mipi_del_crs_csi2.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @acpi_graph_ignore_port(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @acpi_graph_ignore_port.dmi_tested, align 1
  br i1 %.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @dmi_name_in_vendors(ptr noundef @.str.1) #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @x86_match_cpu(ptr noundef @dell_broken_mipi_disco_cpu_gens) #11
  %.not20 = icmp eq ptr %i.b, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i1 true, ptr @acpi_graph_ignore_port.ignore_port, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  store i1 true, ptr @acpi_graph_ignore_port.dmi_tested, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.b19 = load i1, ptr @acpi_graph_ignore_port.ignore_port, align 1
  br i1 %.b19, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.c = tail call ptr @acpi_handle_path(ptr noundef %0) #11 ; 4 uses
  %.not21 = icmp eq ptr %i.c, null
  br i1 %.not21, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.d = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef @.str.2) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %i.d, i64 3        ; 2 uses
  %.not22 = icmp eq ptr %i.e, null
  %or.cond = or i1 %.not.i, %.not22
  br i1 %or.cond, label %strnext.exit.thread, label %strnext.exit30.thread38

strnext.exit.thread:                              ; preds = %bb.h
  %i.f = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.c, ptr noundef @.str.3) #11 ; 2 uses
  %.not.i28 = icmp eq ptr %i.f, null
  %i.g = getelementptr i8, ptr %i.f, i64 3        ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  %or.cond44 = or i1 %.not.i28, %.not23
  br i1 %or.cond44, label %strnext.exit30.thread, label %strnext.exit30.thread38

strnext.exit30.thread38:                          ; preds = %strnext.exit.thread, %bb.h
  %.01541 = phi ptr [ %i.g, %strnext.exit.thread ], [ %i.e, %bb.h ] ; 3 uses
  %i.h = load i8, ptr %.01541, align 1
  %i.i = add i8 %i.h, -58
  %i.j = icmp ult i8 %i.i, -10
  br i1 %i.j, label %strnext.exit30.thread, label %bb.i

bb.i:                                             ; preds = %strnext.exit30.thread38
  %i.k = getelementptr i8, ptr %.01541, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %bb.j, label %strnext.exit30.thread

bb.j:                                             ; preds = %bb.i
  %i.n = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %.01541, ptr noundef @.str.4) #11 ; 3 uses
  %.not.i31 = icmp eq ptr %i.n, null
  br i1 %.not.i31, label %strnext.exit30.thread, label %strnext.exit33

strnext.exit33:                                   ; preds = %bb.j
  %i.o = getelementptr i8, ptr %i.n, i64 3        ; 2 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %strnext.exit30.thread, label %bb.k

bb.k:                                             ; preds = %strnext.exit33
  %i.p = load i8, ptr %i.o, align 1
  %i.q = add i8 %i.p, -58
  %i.r = icmp ult i8 %i.q, -10
  br i1 %i.r, label %strnext.exit30.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %i.n, i64 4
  %i.t = load i8, ptr %i.s, align 1
  %.not27 = icmp eq i8 %i.t, 0
  br i1 %.not27, label %.sink.split, label %strnext.exit30.thread

strnext.exit30.thread:                            ; preds = %bb.j, %strnext.exit.thread, %strnext.exit33, %bb.k, %bb.l, %strnext.exit30.thread38, %bb.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %strnext.exit30.thread
  %.0.ph = phi i1 [ false, %strnext.exit30.thread ], [ true, %bb.l ]
  tail call void @kfree(ptr noundef nonnull %i.c) #11
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @dmi_name_in_vendors(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @x86_match_cpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_handle_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_attach_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @acpi_mipi_data_tag(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_get_data_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @acpi_get_physical_device_location(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_get_name(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @software_node_register_node_group(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @software_node_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u64_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_detach_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nofree noredzone nounwind null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind "no-builtin-wcslen" }
attributes #12 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
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
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"auto-init"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!24 = !{i64 2156391145, i64 2156391020}
!25 = !{i64 2156391668, i64 2156392745, i64 2156392778, i64 2156392813, i64 2156392829, i64 2156393756, i64 2156393814, i64 2156393863, i64 2156393673, i64 2156392888, i64 2156392920, i64 2156393003}
!26 = !{i64 2156394172, i64 2156394048}
!27 = !{i64 2156395570, i64 2156395445}
!28 = !{i64 2156396093, i64 2156397172, i64 2156397205, i64 2156397240, i64 2156397256, i64 2156398183, i64 2156398241, i64 2156398290, i64 2156398100, i64 2156397315, i64 2156397347, i64 2156397430}
!29 = !{i64 2156398599, i64 2156398475}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{null, null}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = !{i64 2149461657}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = distinct !{!39, !11}
end_hunk_0
