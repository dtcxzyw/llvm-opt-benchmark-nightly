Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/amd64-agp?download=true
inline.NumInlined: 23
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@agp_amd64_init:bb.a
  %.0 = phi i32 [ %i.b, %._crit_edge ], [ -22, %bb.a ], [ %i.b, %bb.b ], [ -19, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i16 @amd_nb_num() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_add_dynid(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @agp_amd64_cleanup() #0 section ".exit.text" align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @aperture_resource, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @release_resource(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @pci_unregister_driver(ptr noundef nonnull @agp_amd64_pci_driver) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @agp_amd64_mod_init() #0 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @agp_amd64_init() #12
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -2147483648, 1) i32 @agp_amd64_probe(ptr noundef %0, ptr nofree readnone captures(none) %1) #4 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.pci_bus_region, align 8     ; 5 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i16, align 2                      ; 8 uses
  %i.g = load i32, ptr @agp_bridges_found, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 2) #10 ; 2 uses
  %.not45 = icmp eq i8 %i.h, 0
  br i1 %.not45, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @agp_alloc_bridge() #10    ; 12 uses
  %.not46 = icmp eq ptr %i.i, null
  br i1 %.not46, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 60         ; 3 uses
  %i.k = load i16, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i16 %i.k, 4130
  %i.m = getelementptr i8, ptr %0, i64 62
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = icmp eq i16 %i.n, 29780
  %or.cond = select i1 %i.l, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  switch i8 %i.q, label %bb.k [
    i8 1, label %bb.l
    i8 2, label %bb.f
    i8 17, label %bb.g
    i8 18, label %bb.h
    i8 19, label %bb.i
    i8 20, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.0.i = phi ptr [ @.str.13, %bb.k ], [ @.str.12, %bb.j ], [ @.str.8, %bb.f ], [ @.str.9, %bb.g ], [ @.str.10, %bb.h ], [ @.str.11, %bb.i ], [ @.str.7, %bb.e ]
  %i.r = getelementptr i8, ptr %0, i64 200        ; 2 uses
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.r, ptr noundef nonnull @.str.14, ptr noundef nonnull %.0.i) #11
  %i.s = load i8, ptr %i.p, align 8
  %i.t = icmp ult i8 %i.s, 19
  br i1 %i.t, label %bb.m, label %amd8151_init.exit

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.r, ptr noundef nonnull @.str.15) #11
  %i.u = getelementptr i8, ptr %i.i, i64 152
  store i8 3, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.i, i64 153
  store i8 0, ptr %i.v, align 1
  br label %amd8151_init.exit

._crit_edge:                                      ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 200
  %i.x = zext i16 %i.k to i32
  %i.y = zext i16 %i.n to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.w, ptr noundef nonnull @.str.6, i32 noundef %i.x, i32 noundef %i.y) #11
  br label %amd8151_init.exit

amd8151_init.exit:                                ; preds = %bb.m, %bb.l, %._crit_edge
  %i.z = getelementptr i8, ptr %i.i, i64 8
  store ptr @amd_8151_driver, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.i, i64 48
  store ptr %0, ptr %i.aa, align 8
  %i.ab = zext i8 %i.h to i32                     ; 3 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 144
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = add nuw nsw i32 %i.ab, 4
  %i.ae = getelementptr i8, ptr %i.i, i64 112
  %i.af = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %i.ad, ptr noundef %i.ae) #10 ; 0 uses
  %i.ag = tail call zeroext i16 @amd_nb_num() #10
  %.not.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i, label %bb.x, label %bb.n

bb.n:                                             ; preds = %amd8151_init.exit
  %i.ah = tail call zeroext i1 @amd_nb_has_feature(i32 noundef 1) #10
  br i1 %i.ah, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.n
  %i.ai = tail call zeroext i16 @amd_nb_num() #10
  %.not19.i = icmp eq i16 %i.ai, 0
  br i1 %.not19.i, label %cache_nbs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %narrow.i.i = add nuw nsw i32 %i.ab, 20
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = getelementptr i8, ptr %0, i64 968
  %i.al = getelementptr i8, ptr %0, i64 200       ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %.0918.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ch, %.critedge.i ] ; 2 uses
  %i.am = call ptr @node_to_amd_nb(i32 noundef %.0918.i) #10
  %i.an = load ptr, ptr %i.am, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i32 0, ptr %i.e, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i16 0, ptr %i.f, align 2, !annotation !15
  %i.ao = call i32 @pci_read_config_dword(ptr noundef %i.an, i32 noundef 144, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.ap = load i32, ptr %i.d, align 4
  %i.aq = lshr i32 %i.ap, 1
  %i.ar = and i32 %i.aq, 7
  store i32 %i.ar, ptr %i.d, align 4
  %i.as = call i32 @pci_read_config_dword(ptr noundef %i.an, i32 noundef 148, ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.at = load i32, ptr %i.e, align 4
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 25               ; 2 uses
  %i.aw = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %narrow.i.i, ptr noundef nonnull %i.f) #10 ; 0 uses
  %i.ax = load i16, ptr %i.f, align 2             ; 3 uses
  %i.ay = icmp eq i16 %i.ax, -1
  br i1 %i.ay, label %fix_northbridge.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = and i16 %i.ax, 4095                     ; 2 uses
  %i.ba = and i16 %i.ax, 255
  %.not.i.i = icmp eq i16 %i.ba, 0
  %3 = or i16 %i.az, 3840
  %spec.select.i.i = select i1 %.not.i.i, i16 %i.az, i16 %3 ; 2 uses
  store i16 %spec.select.i.i, ptr %i.f, align 2
  %i.bb = zext nneg i16 %spec.select.i.i to i32
  %i.bc = call i64 @llvm.read_register.i64(metadata !1)
  %i.bd = call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 65536) %i.bb, i64 %i.bc) #14, !srcloc !18 ; 2 uses
  %i.be = extractvalue { i32, i64 } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.bd, 1
  call void @llvm.write_register.i64(metadata !1, i64 %i.bf)
  %i.bg = sub i32 7, %i.be                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !annotation !15
  %i.bh = load ptr, ptr %i.aj, align 8
  call void @pcibios_resource_to_bus(ptr noundef %i.bh, ptr noundef nonnull %2, ptr noundef %i.ak) #10
  %i.bi = load i64, ptr %2, align 8               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.bj = icmp sgt i32 %i.bg, -1
  br i1 %i.bj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bk = sub i32 27, %i.be
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl i64 32, %i.bl
  %i.bn = add i64 %i.bi, %i.bm
  %i.bo = icmp ugt i64 %i.bn, 4294967296
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = shl i32 32, %i.bg
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.al, ptr noundef nonnull @.str.21, i32 noundef %i.bp) #11
  %i.bq = load i32, ptr %i.d, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.bq, %bb.r ], [ %i.bg, %bb.q ], [ %i.bg, %bb.p ] ; 5 uses
  %i.br = load i32, ptr %i.d, align 4             ; 2 uses
  %.not45.i.i = icmp ult i32 %i.br, %.0.i.i
  br i1 %.not45.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = shl i32 33554432, %i.br
  %i.bt = call fastcc i32 @agp_aperture_valid(i64 noundef %i.av, i32 noundef %i.bs) #15, !srcloc !19
  %.not46.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not46.i.i, label %bb.u, label %fix_northbridge.exit.thread.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = shl i32 32, %.0.i.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.al, ptr noundef nonnull @.str.22, i64 noundef %i.bi, i32 noundef %i.bu) #11
  %i.bv = icmp slt i32 %.0.i.i, 0
  br i1 %i.bv, label %fix_northbridge.exit.thread13.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = shl i32 33554432, %.0.i.i
  %i.bx = call fastcc i32 @agp_aperture_valid(i64 noundef %i.bi, i32 noundef %i.bw) #15, !srcloc !20
  %.not47.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not47.i.i, label %fix_northbridge.exit.thread13.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = shl nuw i32 %.0.i.i, 1
  %i.bz = call i32 @pci_write_config_dword(ptr noundef %i.an, i32 noundef 144, i32 noundef %i.by) #10 ; 0 uses
  %i.ca = lshr i64 %i.bi, 25
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = call i32 @pci_write_config_dword(ptr noundef %i.an, i32 noundef 148, i32 noundef %i.cb) #10 ; 0 uses
  br label %fix_northbridge.exit.thread.i

fix_northbridge.exit.thread.i:                    ; preds = %bb.w, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.critedge.i

fix_northbridge.exit.thread13.i:                  ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %.loopexit16.i

fix_northbridge.exit.i:                           ; preds = %bb.o
  %i.cd = load i32, ptr %i.d, align 4
  %i.ce = shl i32 33554432, %i.cd
  %i.cf = call fastcc i32 @agp_aperture_valid(i64 noundef %i.av, i32 noundef %i.ce) #15, !srcloc !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %.not15.i = icmp eq i32 %i.cf, 0
  br i1 %.not15.i, label %.loopexit16.i, label %.critedge.i

.loopexit16.i:                                    ; preds = %fix_northbridge.exit.i, %fix_northbridge.exit.thread13.i
  %i.cg = getelementptr i8, ptr %i.an, i64 200    ; 2 uses
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cg, ptr noundef nonnull @.str.19) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cg, ptr noundef nonnull @.str.20) #11
  br label %bb.x

.critedge.i:                                      ; preds = %fix_northbridge.exit.i, %fix_northbridge.exit.thread.i
  %i.ch = add nuw nsw i32 %.0918.i, 1             ; 2 uses
  %i.ci = call zeroext i16 @amd_nb_num() #10
  %i.cj = zext i16 %i.ci to i32
  %i.ck = icmp samesign ult i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.o, label %cache_nbs.exit, !llvm.loop !17

bb.x:                                             ; preds = %.loopexit16.i, %bb.n, %amd8151_init.exit
  call void @agp_put_bridge(ptr noundef nonnull %i.i) #10
  br label %bb.ai

cache_nbs.exit:                                   ; preds = %.critedge.i, %.preheader.i
  %i.cl = load i16, ptr %i.j, align 4             ; 2 uses
  %i.cm = icmp eq i16 %i.cl, 4318
  br i1 %i.cm, label %bb.y, label %.critedge

bb.y:                                             ; preds = %cache_nbs.exit
  %i.cn = call fastcc i32 @nforce3_agp_init(ptr noundef %0) #15, !srcloc !22 ; 2 uses
  %.not47 = icmp eq i32 %i.cn, 0
  br i1 %.not47, label %.critedgethread-pre-split, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @agp_put_bridge(ptr noundef nonnull %i.i) #10
  br label %bb.ai

.critedgethread-pre-split:                        ; preds = %bb.y
  %.pr = load i16, ptr %i.j, align 4
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %cache_nbs.exit
  %i.co = phi i16 [ %.pr, %.critedgethread-pre-split ], [ %i.cl, %cache_nbs.exit ]
  %i.cp = icmp eq i16 %i.co, 4281
  br i1 %i.cp, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cq = call ptr @node_to_amd_nb(i32 noundef 0) #10
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %amd64_fetch_size.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.a, align 4, !annotation !15
  %i.ct = call i32 @pci_read_config_dword(ptr noundef nonnull %i.cr, i32 noundef 144, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.cu = load i32, ptr %i.a, align 4
  %i.cv = and i32 %i.cu, 14                       ; 2 uses
  store i32 %i.cv, ptr %i.a, align 4
  %i.cw = load ptr, ptr @agp_bridge, align 8      ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cz, align 8            ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph.preheader.i.i, label %amd64_fetch_size.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ab
  %wide.trip.count.i.i = zext nneg i32 %i.da to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ad ] ; 3 uses
  %i.dc = getelementptr [16 x i8], ptr @amd64_aperture_sizes, i64 %indvars.iv.i.i ; 4 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp eq i32 %i.cv, %i.de
  br i1 %i.df, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.dg = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.dh = getelementptr i8, ptr %i.cw, i64 32
  store ptr %i.dc, ptr %i.dh, align 8
  %i.di = load ptr, ptr @agp_bridge, align 8
  %i.dj = getelementptr i8, ptr %i.di, i64 24
  store ptr %i.dc, ptr %i.dj, align 8
  %i.dk = load ptr, ptr @agp_bridge, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 140
  store i32 %i.dg, ptr %i.dl, align 4
  %i.dm = load i32, ptr %i.dc, align 4
  br label %amd64_fetch_size.exit.i

bb.ad:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %amd64_fetch_size.exit.i, label %.lr.ph.i.i, !llvm.loop !0

amd64_fetch_size.exit.i:                          ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.011.i.i = phi i32 [ 0, %bb.aa ], [ %i.dm, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.ad ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.dn = getelementptr i8, ptr %0, i64 200       ; 3 uses
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.dn, ptr noundef nonnull @.str.32) #11
  %i.do = getelementptr i8, ptr %0, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call ptr @pci_get_slot(ptr noundef %i.dp, i32 noundef 0) #10 ; 5 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %uli_agp_init.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %amd64_fetch_size.exit.i
  %i.ds = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.011.i.i)
  %i.dt = icmp eq i32 %i.ds, 1
  br i1 %i.dt, label %.preheader.preheader.split.i, label %bb.ae

.preheader.preheader.split.i:                     ; preds = %.preheader.preheader.i
  %i.du = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.011.i.i, i1 true)
  %.off.i = add nsw i32 %i.du, -2
  %switch.i = icmp ult i32 %.off.i, 7
end_hunk_0
