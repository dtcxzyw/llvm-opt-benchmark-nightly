inline.NumInlined: 62
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@acpi_mipi_scan_crs_csi2:bb.a
  %.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not113.i.i
  br i1 %.not.i.i, label %extract_crs_csi2_conn_info.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8            ; 4 uses
  %.not71.i.i = icmp eq ptr %i.cc, null
  br i1 %.not71.i.i, label %extract_crs_csi2_conn_info.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr i8, ptr %.028.i, i64 46
  %i.ce = load i8, ptr %i.cd, align 2             ; 2 uses
  switch i8 %i.ce, label %bb.q [
    i8 0, label %bb.r
    i8 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cf = zext i8 %i.ce to i32
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.bs, ptr noundef nonnull @.str.9, i32 noundef %i.cf) #11
  br label %extract_crs_csi2_conn_info.exit.i

bb.r:                                             ; preds = %bb.p, %bb.o
  %.0.i.i45 = phi i32 [ 4, %bb.p ], [ 1, %bb.o ]  ; 2 uses
  %i.cg = getelementptr i8, ptr %.028.i, i64 45   ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = load i32, ptr %i.bu, align 8            ; 4 uses
  %.not.i103.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i103.i.i, label %next_csi2_port_index.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.ck = load ptr, ptr %i.bv, align 8
  %wide.trip.count.i.i.i = zext i32 %i.cj to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.v ] ; 4 uses
  %i.cl = getelementptr [624 x i8], ptr %i.ck, i64 %indvars.iv.i.i.i ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 144
  %i.cn = load i32, ptr %i.cm, align 8            ; 2 uses
  %i.co = icmp eq i32 %i.cn, %i.ci
  br i1 %i.co, label %.thread.loopexit.split.loop.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cp = icmp eq i32 %i.cn, -2
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr i8, ptr %i.cl, i64 144
  %i.cr = trunc nuw i64 %indvars.iv.i.i.i to i32
  store i32 %i.ci, ptr %i.cq, align 8
  %.pre.i.i = load i32, ptr %i.bu, align 8
  br label %next_csi2_port_index.exit.i.i

bb.v:                                             ; preds = %bb.t
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %next_csi2_port_index.exit.i.i, label %bb.s, !llvm.loop !20

.thread.loopexit.split.loop.exit.i.i.i:           ; preds = %bb.s
  %i.cs = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %next_csi2_port_index.exit.i.i

next_csi2_port_index.exit.i.i:                    ; preds = %bb.v, %.thread.loopexit.split.loop.exit.i.i.i, %bb.u
  %i.ct = phi i32 [ %.pre.i.i, %bb.u ], [ %i.cj, %.thread.loopexit.split.loop.exit.i.i.i ], [ %i.cj, %bb.v ]
  %.2.i.i.i = phi i32 [ %i.cr, %bb.u ], [ %i.cs, %.thread.loopexit.split.loop.exit.i.i.i ], [ -2, %bb.v ] ; 3 uses
  %.not72.i.i = icmp ult i32 %.2.i.i.i, %i.ct
  br i1 %.not72.i.i, label %.critedge.i.i, label %next_csi2_port_index.exit.thread.i.i, !prof !21

next_csi2_port_index.exit.thread.i.i:             ; preds = %next_csi2_port_index.exit.i.i, %bb.r
  call void asm sideeffect "450: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 450b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 450) #10, !srcloc !22
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.10, i32 313, i32 2307, i64 16) #10, !srcloc !23
  call void asm sideeffect "451: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 451b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 451) #10, !srcloc !24
  br label %extract_crs_csi2_conn_info.exit.i

.critedge.i.i:                                    ; preds = %next_csi2_port_index.exit.i.i
  %i.cu = getelementptr i8, ptr %.028.i, i64 26   ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cc, i64 216    ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8            ; 4 uses
  %.not.i104.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i104.i.i, label %next_csi2_port_index.exit112.thread.i.i, label %.lr.ph.i105.i.i

.lr.ph.i105.i.i:                                  ; preds = %.critedge.i.i
  %i.cz = getelementptr i8, ptr %i.cc, i64 208    ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %wide.trip.count.i106.i.i = zext i32 %i.cy to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.z, %.lr.ph.i105.i.i
  %indvars.iv.i107.i.i = phi i64 [ 0, %.lr.ph.i105.i.i ], [ %indvars.iv.next.i108.i.i, %bb.z ] ; 4 uses
  %i.db = getelementptr [624 x i8], ptr %i.da, i64 %indvars.iv.i107.i.i ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 144
  %i.dd = load i32, ptr %i.dc, align 8            ; 2 uses
  %i.de = icmp eq i32 %i.dd, %i.cw
  br i1 %i.de, label %.thread.loopexit.split.loop.exit.i111.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = icmp eq i32 %i.dd, -2
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr i8, ptr %i.db, i64 144
  %i.dh = trunc nuw i64 %indvars.iv.i107.i.i to i32
  store i32 %i.cw, ptr %i.dg, align 8
  %.pre171.i.i = load i32, ptr %i.cx, align 8
  br label %next_csi2_port_index.exit112.i.i

bb.z:                                             ; preds = %bb.x
  %indvars.iv.next.i108.i.i = add nuw nsw i64 %indvars.iv.i107.i.i, 1 ; 2 uses
  %exitcond.not.i109.i.i = icmp eq i64 %indvars.iv.next.i108.i.i, %wide.trip.count.i106.i.i
  br i1 %exitcond.not.i109.i.i, label %next_csi2_port_index.exit112.i.i, label %bb.w, !llvm.loop !20

.thread.loopexit.split.loop.exit.i111.i.i:        ; preds = %bb.w
  %i.di = trunc nuw i64 %indvars.iv.i107.i.i to i32
  br label %next_csi2_port_index.exit112.i.i

next_csi2_port_index.exit112.i.i:                 ; preds = %bb.z, %.thread.loopexit.split.loop.exit.i111.i.i, %bb.y
  %i.dj = phi i32 [ %.pre171.i.i, %bb.y ], [ %i.cy, %.thread.loopexit.split.loop.exit.i111.i.i ], [ %i.cy, %bb.z ]
  %.2.i110.i.i = phi i32 [ %i.dh, %bb.y ], [ %i.di, %.thread.loopexit.split.loop.exit.i111.i.i ], [ -2, %bb.z ] ; 3 uses
  %.not73.i.i = icmp ult i32 %.2.i110.i.i, %i.dj
  br i1 %.not73.i.i, label %.critedge102.i.i, label %next_csi2_port_index.exit112.thread.i.i, !prof !21

next_csi2_port_index.exit112.thread.i.i:          ; preds = %next_csi2_port_index.exit112.i.i, %.critedge.i.i
  call void asm sideeffect "452: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 452b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 452) #10, !srcloc !25
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.10, i32 318, i32 2307, i64 16) #10, !srcloc !26
  call void asm sideeffect "453: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 453b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 453) #10, !srcloc !27
  br label %extract_crs_csi2_conn_info.exit.i

.critedge102.i.i:                                 ; preds = %next_csi2_port_index.exit112.i.i
  %i.dk = load ptr, ptr %i.bv, align 8
  %i.dl = zext i32 %.2.i.i.i to i64
  %i.dm = getelementptr [624 x i8], ptr %i.dk, i64 %i.dl ; 30 uses
  %i.dn = load ptr, ptr %i.bw, align 8
  %i.do = shl i32 %.2.i.i.i, 1
  %i.dp = add i32 %i.do, 2
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr [24 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dm, i64 148
  store i8 1, ptr %i.ds, align 4
  %i.dt = load ptr, ptr %i.cz, align 8
  %i.du = zext i32 %.2.i110.i.i to i64
  %i.dv = getelementptr [624 x i8], ptr %i.dt, i64 %i.du ; 29 uses
  %i.dw = getelementptr i8, ptr %i.cc, i64 192
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = shl i32 %.2.i110.i.i, 1
  %i.dz = add i32 %i.dy, 2
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr [24 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.dm, i64 472    ; 2 uses
  store ptr %i.eb, ptr %i.ec, align 8
  %.sroa.310.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 480
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(144) %.sroa.310.0..sroa_idx.i.i, i8 0, i64 144, i1 false)
  %i.ed = getelementptr i8, ptr %i.dv, i64 472    ; 2 uses
  store ptr %i.dr, ptr %i.ed, align 8
  %.sroa.38.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 480
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(144) %.sroa.38.0..sroa_idx.i.i, i8 0, i64 144, i1 false)
  %i.ee = getelementptr i8, ptr %i.dm, i64 216
  store ptr @.str.11, ptr %i.ee, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 224
  store i64 152, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.33.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 232
  %.sroa.55.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 236
  store i32 0, ptr %.sroa.33.0..sroa_idx.i.i, align 8
  store i32 5, ptr %.sroa.55.0..sroa_idx.i.i, align 4
  %.sroa.66.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 240
  store ptr %i.ec, ptr %.sroa.66.0..sroa_idx.i.i, align 8
  %i.ef = getelementptr i8, ptr %i.dm, i64 248
  store ptr @.str.12, ptr %i.ef, align 8
  %.sroa.2165.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 256
  store i64 4, ptr %.sroa.2165.0..sroa_idx.i.i, align 8
  %.sroa.3166.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 264
  store i8 1, ptr %.sroa.3166.0..sroa_idx.i.i, align 8
  %.sroa.4167.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 265
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4167.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5168.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 268
  store i32 2, ptr %.sroa.5168.0..sroa_idx.i.i, align 4
  %.sroa.6169.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 272
  store i32 %.0.i.i45, ptr %.sroa.6169.0..sroa_idx.i.i, align 8
  %.sroa.7170.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 276
  store i32 0, ptr %.sroa.7170.0..sroa_idx.i.i, align 4
  %i.eg = getelementptr i8, ptr %i.dm, i64 280
  store ptr @.str.13, ptr %i.eg, align 8
  %.sroa.2158.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 288
  store i64 4, ptr %.sroa.2158.0..sroa_idx.i.i, align 8
  %.sroa.3159.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 296
  store i8 1, ptr %.sroa.3159.0..sroa_idx.i.i, align 8
  %.sroa.4160.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 297
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4160.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5161.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 300
  store i32 2, ptr %.sroa.5161.0..sroa_idx.i.i, align 4
  %.sroa.6162.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 304
  store i32 0, ptr %.sroa.6162.0..sroa_idx.i.i, align 8
  %.sroa.7163.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 308
  store i32 0, ptr %.sroa.7163.0..sroa_idx.i.i, align 4
  %i.eh = load i8, ptr %i.cg, align 1
  %i.ei = zext i8 %i.eh to i32
  %1 = getelementptr i8, ptr %i.dm, i64 152
  store ptr @.str.13, ptr %1, align 8
  %.sroa.2151.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 160
  store i64 4, ptr %.sroa.2151.0..sroa_idx.i.i, align 8
  %.sroa.3152.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 168
  store i8 1, ptr %.sroa.3152.0..sroa_idx.i.i, align 8
  %.sroa.4153.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 169
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4153.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5154.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 172
  store i32 2, ptr %.sroa.5154.0..sroa_idx.i.i, align 4
  %.sroa.6155.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 176
  store i32 %i.ei, ptr %.sroa.6155.0..sroa_idx.i.i, align 8
  %.sroa.7156.0..sroa_idx.i.i = getelementptr i8, ptr %i.dm, i64 180
  store i32 0, ptr %.sroa.7156.0..sroa_idx.i.i, align 4
  %i.ej = load i8, ptr %i.cg, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dm, i64 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %i.ek) #11
  %i.em = icmp ugt i32 %i.el, 8
  br i1 %i.em, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge102.i.i
  %i.en = load i8, ptr %i.cg, align 1
  %i.eo = zext i8 %i.en to i32
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.bs, ptr noundef nonnull @.str.15, i32 noundef %i.eo) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge102.i.i
  %i.ep = getelementptr i8, ptr %i.dv, i64 216
  store ptr @.str.11, ptr %i.ep, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 224
  store i64 152, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 232
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 236
  store i32 0, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  store i32 5, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 240
  store ptr %i.ed, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %i.eq = getelementptr i8, ptr %i.dv, i64 248
  store ptr @.str.12, ptr %i.eq, align 8
  %.sroa.2144.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 256
  store i64 4, ptr %.sroa.2144.0..sroa_idx.i.i, align 8
  %.sroa.3145.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 264
  store i8 1, ptr %.sroa.3145.0..sroa_idx.i.i, align 8
  %.sroa.4146.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 265
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4146.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5147.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 268
  store i32 2, ptr %.sroa.5147.0..sroa_idx.i.i, align 4
  %.sroa.6148.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 272
  store i32 %.0.i.i45, ptr %.sroa.6148.0..sroa_idx.i.i, align 8
  %.sroa.7149.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 276
  store i32 0, ptr %.sroa.7149.0..sroa_idx.i.i, align 4
  %i.er = getelementptr i8, ptr %i.dv, i64 280
  store ptr @.str.13, ptr %i.er, align 8
  %.sroa.2137.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 288
  store i64 4, ptr %.sroa.2137.0..sroa_idx.i.i, align 8
  %.sroa.3138.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 296
  store i8 1, ptr %.sroa.3138.0..sroa_idx.i.i, align 8
  %.sroa.4139.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 297
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4139.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5140.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 300
  store i32 2, ptr %.sroa.5140.0..sroa_idx.i.i, align 4
  %.sroa.6141.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 304
  store i32 0, ptr %.sroa.6141.0..sroa_idx.i.i, align 8
  %.sroa.7142.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 308
  store i32 0, ptr %.sroa.7142.0..sroa_idx.i.i, align 4
  %i.es = load i8, ptr %i.cu, align 2
  %i.et = zext i8 %i.es to i32
  %2 = getelementptr i8, ptr %i.dv, i64 152
  store ptr @.str.13, ptr %2, align 8
  %.sroa.2.0..sroa_idx131.i.i = getelementptr i8, ptr %i.dv, i64 160
  store i64 4, ptr %.sroa.2.0..sroa_idx131.i.i, align 8
  %.sroa.3.0..sroa_idx132.i.i = getelementptr i8, ptr %i.dv, i64 168
  store i8 1, ptr %.sroa.3.0..sroa_idx132.i.i, align 8
  %.sroa.4133.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 169
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4133.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5.0..sroa_idx134.i.i = getelementptr i8, ptr %i.dv, i64 172
  store i32 2, ptr %.sroa.5.0..sroa_idx134.i.i, align 4
  %.sroa.6.0..sroa_idx135.i.i = getelementptr i8, ptr %i.dv, i64 176
  store i32 %i.et, ptr %.sroa.6.0..sroa_idx135.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.dv, i64 180
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i, align 4
  %i.eu = load i8, ptr %i.cu, align 2
  %i.ev = zext i8 %i.eu to i32
  %i.ew = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dv, i64 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %i.ev) #11
  %i.ex = icmp ugt i32 %i.ew, 8
  br i1 %i.ex, label %bb.ac, label %extract_crs_csi2_conn_info.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.ey = load i8, ptr %i.cu, align 2
  %i.ez = zext i8 %i.ey to i32
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.bs, ptr noundef nonnull @.str.16, i32 noundef %i.ez) #11
  br label %extract_crs_csi2_conn_info.exit.i

extract_crs_csi2_conn_info.exit.i:                ; preds = %bb.ac, %bb.ab, %next_csi2_port_index.exit112.thread.i.i, %next_csi2_port_index.exit.thread.i.i, %bb.q, %bb.n, %bb.m
  %.0.i46 = load ptr, ptr %.028.i, align 8        ; 2 uses
  %.not16.i = icmp eq ptr %.0.i46, %i.bt
  br i1 %.not16.i, label %prepare_crs_csi2_swnodes.exit, label %bb.m, !llvm.loop !28

prepare_crs_csi2_swnodes.exit:                    ; preds = %extract_crs_csi2_conn_info.exit.i, %.lr.ph75, %bb.l
  %.2 = load ptr, ptr %.274, align 8              ; 2 uses
  %.not48 = icmp eq ptr %.2, @acpi_mipi_crs_csi2_list
  br i1 %.not48, label %._crit_edge76, label %.lr.ph75, !llvm.loop !29

._crit_edge76:                                    ; preds = %prepare_crs_csi2_swnodes.exit, %list_splice.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_mipi_init_crs_csi2_swnodes() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 17 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca [17 x i8], align 16               ; 6 uses
  %0 = alloca %struct.acpi_buffer, align 8        ; 5 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.f, @acpi_mipi_crs_csi2_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %init_crs_csi2_swnodes.exit
  %.014 = phi ptr [ %i.f, %.lr.ph ], [ %.01115, %init_crs_csi2_swnodes.exit ] ; 3 uses
  %.01115 = load ptr, ptr %.014, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @__const.init_crs_csi2_swnodes.buffer, i64 16, i1 false)
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
  %i.n = call zeroext i1 @fwnode_property_present(ptr noundef %i.m, ptr noundef nonnull @.str.17) #11
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
  %i.u = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not84.i = icmp eq i32 %i.u, 0
  br i1 %.not84.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %1 = load i32, ptr %i.d, align 4
  %i.v = add nuw nsw i32 %.2.i, 1
  %i.w = zext nneg i32 %.2.i to i64
  %i.x = getelementptr [32 x i8], ptr %i.i, i64 %i.w ; 7 uses
  store ptr @.str.19, ptr %i.x, align 8
  %.sroa.2136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 4, ptr %.sroa.2136.0..sroa_idx.i, align 8
  %.sroa.3137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i8 1, ptr %.sroa.3137.0..sroa_idx.i, align 8
  %.sroa.4138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4138.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  store i32 2, ptr %.sroa.5139.0..sroa_idx.i, align 4
  %.sroa.6140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 %1, ptr %.sroa.6140.0..sroa_idx.i, align 8
  %.sroa.7141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i32 0, ptr %.sroa.7141.0..sroa_idx.i, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.4.i = phi i32 [ %.2.i, %bb.h ], [ %i.v, %bb.i ] ; 3 uses
  %i.y = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not90.i = icmp eq i32 %i.y, 0
  br i1 %.not90.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %2 = load i32, ptr %i.d, align 4
  %i.z = add nuw nsw i32 %.4.i, 1
  %i.aa = zext nneg i32 %.4.i to i64
  %i.ab = getelementptr [32 x i8], ptr %i.i, i64 %i.aa ; 7 uses
  store ptr @.str.21, ptr %i.ab, align 8
  %.sroa.2129.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 4, ptr %.sroa.2129.0..sroa_idx.i, align 8
  %.sroa.3130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i8 1, ptr %.sroa.3130.0..sroa_idx.i, align 8
  %.sroa.4131.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4131.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %.sroa.5132.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 2, ptr %.sroa.5132.0..sroa_idx.i, align 4
  %.sroa.6133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i32 %2, ptr %.sroa.6133.0..sroa_idx.i, align 8
  %.sroa.7134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  store i32 0, ptr %.sroa.7134.0..sroa_idx.i, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.6.i = phi i32 [ %.4.i, %bb.j ], [ %i.z, %bb.k ] ; 3 uses
  %i.ac = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not96.i = icmp eq i32 %i.ac, 0
  br i1 %.not96.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %3 = load i32, ptr %i.d, align 4
  %i.ad = add nuw nsw i32 %.6.i, 1
  %i.ae = zext nneg i32 %.6.i to i64
  %i.af = getelementptr [32 x i8], ptr %i.i, i64 %i.ae ; 7 uses
  store ptr @.str.23, ptr %i.af, align 8
  %.sroa.2122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 4, ptr %.sroa.2122.0..sroa_idx.i, align 8
  %.sroa.3123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 1, ptr %.sroa.3123.0..sroa_idx.i, align 8
  %.sroa.4124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4124.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %.sroa.5125.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 2, ptr %.sroa.5125.0..sroa_idx.i, align 4
  %.sroa.6126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %3, ptr %.sroa.6126.0..sroa_idx.i, align 8
  %.sroa.7127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store i32 0, ptr %.sroa.7127.0..sroa_idx.i, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.8.i = phi i32 [ %.6.i, %bb.l ], [ %i.ad, %bb.m ]
  %i.ag = call i32 @fwnode_property_read_u32_array(ptr noundef %i.m, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.d, i64 noundef 1) #11
  %.not102.i = icmp eq i32 %i.ag, 0
  br i1 %.not102.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %4 = load i32, ptr %i.d, align 4
  %i.ah = zext nneg i32 %.8.i to i64
  %i.ai = getelementptr [32 x i8], ptr %i.i, i64 %i.ah ; 7 uses
  store ptr @.str.25, ptr %i.ai, align 8
  %.sroa.2.0..sroa_idx119.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 4, ptr %.sroa.2.0..sroa_idx119.i, align 8
  %.sroa.3.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i8 1, ptr %.sroa.3.0..sroa_idx120.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i, i8 0, i64 3, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i32 2, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 %4, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 0, ptr %.sroa.7.0..sroa_idx.i, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = call i32 @acpi_get_name(ptr noundef %i.k, i32 noundef 0, ptr noundef nonnull %0) #11
  %.not108.i = icmp eq i32 %i.aj, 0
  br i1 %.not108.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.k, ptr noundef nonnull @.str.26) #11
  br label %init_crs_csi2_swnodes.exit

bb.r:                                             ; preds = %bb.p
  %i.ak = getelementptr i8, ptr %i.i, i64 192     ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = load ptr, ptr %i.g, align 8
  store ptr %i.am, ptr %i.al, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.an = getelementptr i8, ptr %i.i, i64 216     ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %.not117.i = icmp eq i32 %i.ao, 0
  br i1 %.not117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.ap = getelementptr i8, ptr %i.i, i64 208     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.l, i64 8       ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %fwnode_handle_put.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %fwnode_handle_put.exit.i ] ; 4 uses
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = getelementptr [624 x i8], ptr %i.ar, i64 %indvars.iv.i ; 18 uses
  %i.at = getelementptr i8, ptr %i.as, i64 144    ; 3 uses
  %i.au = load i32, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !annotation !12
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 17, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %i.au) #11
  %i.aw = icmp ugt i32 %i.av, 16
  br i1 %i.aw, label %get_mipi_port_handle.exit.thread.i, label %get_mipi_port_handle.exit.i

get_mipi_port_handle.exit.thread.i:               ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.t

get_mipi_port_handle.exit.i:                      ; preds = %bb.s
  %i.ax = call ptr @fwnode_get_named_child_node(ptr noundef %i.m, ptr noundef nonnull %i.c) #11 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %.not109.i = icmp eq ptr %i.ax, null
  br i1 %.not109.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %get_mipi_port_handle.exit.i, %get_mipi_port_handle.exit.thread.i
  %i.ay = load i32, ptr %i.at, align 8
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %i.k, ptr noundef nonnull @.str.27, i32 noundef %i.ay) #11
  br label %fwnode_handle_put.exit.i

bb.u:                                             ; preds = %get_mipi_port_handle.exit.i
  %.val.i.i = load ptr, ptr %i.aq, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.az = load i32, ptr %i.at, align 8
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.as, i64 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %i.az) #11
  %i.bb = icmp ugt i32 %i.ba, 8
  br i1 %i.bb, label %init_csi2_port.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.bc = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv.i to i32
  %i.be = shl i32 %i.bd, 1                        ; 2 uses
  %i.bf = or disjoint i32 %i.be, 1
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [24 x i8], ptr %i.bc, i64 %i.bg ; 3 uses
  %i.bi = getelementptr i8, ptr %i.as, i64 152
  store ptr %i.as, ptr %i.bh, align 8
  %.sroa.241.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bc, ptr %.sroa.241.0..sroa_idx.i.i, align 8
  %.sroa.342.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bi, ptr %.sroa.342.0..sroa_idx.i.i, align 8
  %i.bj = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.a, i64 noundef 1) #11
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = load i8, ptr %i.a, align 8
  %i.bl = zext i8 %i.bk to i32
  %5 = getelementptr i8, ptr %i.as, i64 312
  store ptr @.str.32, ptr %5, align 8
  %.sroa.2.0..sroa_idx132.i.i = getelementptr i8, ptr %i.as, i64 320
  store i64 4, ptr %.sroa.2.0..sroa_idx132.i.i, align 8
  %.sroa.3.0..sroa_idx133.i.i = getelementptr i8, ptr %i.as, i64 328
  store i8 1, ptr %.sroa.3.0..sroa_idx133.i.i, align 8
  %.sroa.4134.0..sroa_idx.i.i = getelementptr i8, ptr %i.as, i64 329
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(3) %.sroa.4134.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %.sroa.5.0..sroa_idx135.i.i = getelementptr i8, ptr %i.as, i64 332
  store i32 2, ptr %.sroa.5.0..sroa_idx135.i.i, align 4
  %.sroa.6.0..sroa_idx136.i.i = getelementptr i8, ptr %i.as, i64 336
  store i32 %i.bl, ptr %.sroa.6.0..sroa_idx136.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.as, i64 340
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i.i = phi i32 [ 3, %bb.v ], [ 4, %bb.w ]    ; 4 uses
  %i.bm = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.33, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bo = icmp samesign ugt i32 %i.bm, 8
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %.val.i.i, ptr noundef nonnull @.str.34, i32 noundef %i.bm) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.099.i.i = phi i32 [ 8, %bb.z ], [ %i.bm, %bb.y ] ; 4 uses
  %i.bp = zext nneg i32 %.099.i.i to i64          ; 4 uses
  %i.bq = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.a, i64 noundef %i.bp) #11
  %.not111.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not111.i.i, label %.preheader114.i.i, label %bb.ad

.preheader114.i.i:                                ; preds = %bb.aa
  %i.br = getelementptr i8, ptr %i.as, i64 12     ; 6 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.bs = icmp samesign ult i32 %.099.i.i, 4
  br i1 %i.bs, label %.epil.preheader, label %.preheader114.i.i.new

.preheader114.i.i.new:                            ; preds = %.preheader114.i.i
  %unroll_iter = and i64 %i.bp, 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader114.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.preheader114.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader114.i.i.new ], [ %niter.next.3, %bb.ab ]
  %i.bt = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.bu = load i8, ptr %i.bt, align 4
  %i.bv = zext i8 %i.bu to i32
  %i.bw = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.i.i
  store i32 %i.bv, ptr %i.bw, align 4
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32
  %i.ca = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.next.i.i
  store i32 %i.bz, ptr %i.ca, align 4
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  %i.cc = load i8, ptr %i.cb, align 2
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.next.i.i.1
  store i32 %i.cd, ptr %i.ce, align 4
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.next.i.i.2
  store i32 %i.ch, ptr %i.ci, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ab, !llvm.loop !30

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader114.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader114.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.cj = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i.epil
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32
  %i.cm = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv.i.i.epil
  store i32 %i.cl, ptr %i.cm, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ac, !llvm.loop !31

.epilog-lcssa:                                    ; preds = %bb.ac, %.unr-lcssa
  %i.cn = getelementptr i8, ptr %i.as, i64 216
  %i.co = add nuw nsw i32 %.1.i.i, 1
  %i.cp = zext nneg i32 %.1.i.i to i64
  %i.cq = getelementptr [32 x i8], ptr %i.cn, i64 %i.cp ; 5 uses
  %i.cr = shl nuw nsw i64 %i.bp, 2
  store ptr @.str.35, ptr %i.cq, align 8
  %.sroa.223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.cr, ptr %.sroa.223.0..sroa_idx.i.i, align 8
  %.sroa.324.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  store i32 0, ptr %.sroa.324.0..sroa_idx.i.i, align 8
  store i32 2, ptr %.sroa.526.0..sroa_idx.i.i, align 4
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store ptr %i.br, ptr %.sroa.627.0..sroa_idx.i.i, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.epilog-lcssa, %bb.aa, %bb.x
  %.1100.i.i = phi i32 [ %.099.i.i, %bb.aa ], [ %.099.i.i, %.epilog-lcssa ], [ 0, %bb.x ]
  %.3.i.i = phi i32 [ %.1.i.i, %bb.aa ], [ %i.co, %.epilog-lcssa ], [ %.1.i.i, %bb.x ] ; 4 uses
  %i.cs = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.36, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.cw = add nuw nsw i32 %.1100.i.i, 1           ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64              ; 3 uses
  %i.cy = icmp samesign ult i64 %i.cv, %i.cx
  br i1 %i.cy, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %.val.i.i, ptr noundef nonnull @.str.37, i64 noundef %i.cv, i32 noundef %i.cw) #11
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.cz = icmp samesign ugt i32 %i.cs, 8
  br i1 %i.cz, label %.thread.i.i, label %.lr.ph.preheader.i.i

.thread.i.i:                                      ; preds = %bb.ag
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef nonnull @.str.7, ptr noundef %.val.i.i, ptr noundef nonnull @.str.38, i32 noundef %i.cs) #11
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread.i.i, %bb.ag
  %.sink.i = phi i64 [ 8, %.thread.i.i ], [ %i.cu, %bb.ag ] ; 4 uses
  %i.da = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.a, i64 noundef %.sink.i) #11 ; 0 uses
  %i.db = add nsw i64 %.sink.i, -1
  %xtraiter30 = and i64 %.sink.i, 3               ; 3 uses
  %i.dc = icmp ult i64 %i.db, 3
  br i1 %i.dc, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter35 = and i64 %.sink.i, 2147483644
  br label %.lr.ph.i.i

.preheader.i.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %.preheader.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv122.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next123.i.i.3, %.preheader.i.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.ej, %.preheader.i.loopexit.i.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter30, 0
  call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv122.i.i.epil = phi i64 [ %indvars.iv122.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next123.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %i.dd = phi i64 [ %.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.dj, %.lr.ph.i.i.epil ]
  %epil.iter31 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i.epil ]
  %i.de = getelementptr i8, ptr %i.a, i64 %indvars.iv122.i.i.epil
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %indvars.iv122.i.i.epil, 3
  %i.di = shl i64 %i.dg, %i.dh
  %i.dj = or i64 %i.di, %i.dd                     ; 2 uses
  %indvars.iv.next123.i.i.epil = add nuw nsw i64 %indvars.iv122.i.i.epil, 1
  %epil.iter31.next = add i64 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i64 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %.preheader.i.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !32

.preheader.i.loopexit.i:                          ; preds = %.lr.ph.i.i.epil, %.preheader.i.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ej, %.preheader.i.loopexit.i.unr-lcssa ], [ %i.dj, %.lr.ph.i.i.epil ]
  store i64 %.lcssa, ptr %i.b, align 8
  %i.dk = getelementptr i8, ptr %i.as, i64 44     ; 2 uses
  br label %arch_test_bit.exit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv122.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next123.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %i.dl = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.ej, %.lr.ph.i.i ]
  %niter36 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter36.next.3, %.lr.ph.i.i ]
  %i.dm = getelementptr i8, ptr %i.a, i64 %indvars.iv122.i.i
  %i.dn = load i8, ptr %i.dm, align 4
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %indvars.iv122.i.i, 3
  %i.dq = shl i64 %i.do, %i.dp
  %i.dr = or i64 %i.dq, %i.dl
  %indvars.iv.next123.i.i = or disjoint i64 %indvars.iv122.i.i, 1 ; 2 uses
end_hunk_0
